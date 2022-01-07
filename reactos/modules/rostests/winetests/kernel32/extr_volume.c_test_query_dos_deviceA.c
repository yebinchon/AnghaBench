
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buffer2 ;
typedef int DWORD ;
typedef int BOOL ;


 scalar_t__ ERROR_FILE_NOT_FOUND ;
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ;
 int FALSE ;
 scalar_t__ GetLastError () ;
 int GetProcessHeap () ;
 char* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,char*) ;
 int QueryDosDeviceA (char*,char*,int) ;
 int SetLastError (int) ;
 int TRUE ;
 int ok (int,char*,...) ;
 scalar_t__ strlen (char*) ;
 scalar_t__ strstr (char*,char*) ;
 char toupper (char) ;

__attribute__((used)) static void test_query_dos_deviceA(void)
{
    char drivestr[] = "a:";
    char *p, *buffer, buffer2[2000];
    DWORD ret, ret2, buflen=32768;
    BOOL found = FALSE;


    SetLastError(0xdeadbeef);
    ret = QueryDosDeviceA( ((void*)0), ((void*)0), 0 );
    ok(!ret && GetLastError() == ERROR_INSUFFICIENT_BUFFER,
       "QueryDosDeviceA(no buffer): returned %u, le=%u\n", ret, GetLastError());

    buffer = HeapAlloc( GetProcessHeap(), 0, buflen );
    SetLastError(0xdeadbeef);
    ret = QueryDosDeviceA( ((void*)0), buffer, buflen );
    ok((ret && GetLastError() != ERROR_INSUFFICIENT_BUFFER),
        "QueryDosDeviceA failed to return list, last error %u\n", GetLastError());

    if (ret && GetLastError() != ERROR_INSUFFICIENT_BUFFER) {
        p = buffer;
        for (;;) {
            if (!strlen(p)) break;
            ret2 = QueryDosDeviceA( p, buffer2, sizeof(buffer2) );
            ok(ret2, "QueryDosDeviceA failed to return current mapping for %s, last error %u\n", p, GetLastError());
            p += strlen(p) + 1;
            if (ret <= (p-buffer)) break;
        }
    }

    for (;drivestr[0] <= 'z'; drivestr[0]++) {

        ret = QueryDosDeviceA( drivestr, buffer, buflen - 1);
        ok(ret || GetLastError() == ERROR_FILE_NOT_FOUND,
            "QueryDosDeviceA failed to return current mapping for %s, last error %u\n", drivestr, GetLastError());
        if(ret) {
            for (p = buffer; *p; p++) *p = toupper(*p);
            if (strstr(buffer, "HARDDISK") || strstr(buffer, "RAMDISK")) found = TRUE;
        }
    }
    ok(found, "expected at least one devicename to contain HARDDISK or RAMDISK\n");
    HeapFree( GetProcessHeap(), 0, buffer );
}
