
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 int GetProcessHeap () ;
 char* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,char*) ;
 int ok (int,char*,...) ;
 int pGetLogicalDriveStringsA (int,char*) ;

__attribute__((used)) static void test_GetLogicalDriveStringsA(void)
{
    UINT size, size2;
    char *buf, *ptr;

    ok( pGetLogicalDriveStringsA != ((void*)0), "GetLogicalDriveStringsA not available\n");
    if(!pGetLogicalDriveStringsA) {
        return;
    }

    size = pGetLogicalDriveStringsA(0, ((void*)0));
    ok(size%4 == 1, "size = %d\n", size);

    buf = HeapAlloc(GetProcessHeap(), 0, size);

    *buf = 0;
    size2 = pGetLogicalDriveStringsA(2, buf);
    ok(size2 == size, "size2 = %d\n", size2);
    ok(!*buf, "buf changed\n");

    size2 = pGetLogicalDriveStringsA(size, buf);
    ok(size2 == size-1, "size2 = %d\n", size2);

    for(ptr = buf; ptr < buf+size2; ptr += 4) {
        ok(('A' <= *ptr && *ptr <= 'Z'), "device name '%c' is not uppercase\n", *ptr);
        ok(ptr[1] == ':', "ptr[1] = %c, expected ':'\n", ptr[1]);
        ok(ptr[2] == '\\', "ptr[2] = %c expected '\\'\n", ptr[2]);
        ok(!ptr[3], "ptr[3] = %c expected nullbyte\n", ptr[3]);
    }
    ok(!*ptr, "buf[size2] is not nullbyte\n");

    HeapFree(GetProcessHeap(), 0, buf);
}
