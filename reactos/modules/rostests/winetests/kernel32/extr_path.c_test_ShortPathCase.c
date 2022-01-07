
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int shortbuf ;
typedef int buf ;
typedef scalar_t__ HANDLE ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileA (char*,int,int ,int *,int ,int ,int *) ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 int GetLastError () ;
 int GetShortPathNameA (char*,char*,int) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MAX_PATH ;
 int OPEN_EXISTING ;
 int assert (int) ;
 int ok (int,char*,int ) ;
 int sprintf (char*,char*,char const*,char const*,char const*) ;
 size_t strlen (char const*) ;
 char tolower (char) ;

__attribute__((used)) static void test_ShortPathCase(const char *tmpdir, const char *dirname,
                               const char *filename)
{
    char buf[MAX_PATH], shortbuf[MAX_PATH];
    HANDLE hndl;
    size_t i;

    assert(strlen(tmpdir) + strlen(dirname) + strlen(filename) + 2 < sizeof(buf));
    sprintf(buf,"%s\\%s\\%s",tmpdir,dirname,filename);
    GetShortPathNameA(buf,shortbuf,sizeof(shortbuf));
    hndl = CreateFileA(shortbuf,GENERIC_READ|GENERIC_WRITE,0,((void*)0),OPEN_EXISTING,0,((void*)0));
    ok(hndl!=INVALID_HANDLE_VALUE,"CreateFileA failed (%d)\n",GetLastError());
    CloseHandle(hndl);

    for(i=0;i<strlen(shortbuf);i++)
        if (i % 2)
            shortbuf[i] = tolower(shortbuf[i]);
    hndl = CreateFileA(shortbuf,GENERIC_READ|GENERIC_WRITE,0,((void*)0),OPEN_EXISTING,0,((void*)0));
    ok(hndl!=INVALID_HANDLE_VALUE,"CreateFileA failed (%d)\n",GetLastError());
    CloseHandle(hndl);
}
