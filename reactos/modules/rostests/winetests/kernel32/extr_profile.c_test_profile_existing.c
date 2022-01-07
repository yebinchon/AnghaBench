
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pe ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 int CREATE_ALWAYS ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileA (char const*,int const,int,int *,int ,int ,int *) ;
 int DeleteFileA (char const*) ;


 int FILE_ATTRIBUTE_NORMAL ;




 int GetLastError () ;
 int GetPrivateProfileStringA (char*,char*,int *,char*,int,char const*) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 char* KEY ;
 int MAX_PATH ;
 int OPEN_EXISTING ;
 char* SECTION ;
 int SetLastError (int) ;

 int WriteFile (scalar_t__,char*,int ,int*,int *) ;
 int WritePrivateProfileStringA (char*,char*,char*,char const*) ;
 int broken (int) ;
 int ok (int,char*,...) ;
 int sprintf (char*,char*,char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static void test_profile_existing(void)
{
    static const char *testfile1 = ".\\winesharing1.ini";
    static const char *testfile2 = ".\\winesharing2.ini";

    static const struct {
        DWORD dwDesiredAccess;
        DWORD dwShareMode;
        DWORD write_error;
        BOOL read_error;
        DWORD broken_error;
    } pe[] = {
        {130, 132, 134, 133 },
        {130, 131, 134, 128 },
        {129, 132, 134, 133 },
        {129, 131, 134, 128 },
        {130|129, 132, 134, 133 },
        {130|129, 131, 134, 128 },
        {130, 132|131, 0, 133, 134 },
        {129, 132|131, 0, 133, 134 },

        {130|129, 132|131, 0, 133, 134 }
    };

    int i;
    BOOL ret;
    DWORD size;
    HANDLE h = 0;
    char buffer[MAX_PATH];

    for (i=0; i < sizeof(pe)/sizeof(pe[0]); i++)
    {
        h = CreateFileA(testfile1, pe[i].dwDesiredAccess, pe[i].dwShareMode, ((void*)0),
                       CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, ((void*)0));
        ok(INVALID_HANDLE_VALUE != h, "%d: CreateFile failed\n",i);
        SetLastError(0xdeadbeef);

        ret = WritePrivateProfileStringA(SECTION, KEY, "12345", testfile1);
        if (!pe[i].write_error)
        {
            if (!ret)
                ok( broken(GetLastError() == pe[i].broken_error),
                    "%d: WritePrivateProfileString failed with error %u\n", i, GetLastError() );
            CloseHandle(h);
            size = GetPrivateProfileStringA(SECTION, KEY, 0, buffer, MAX_PATH, testfile1);
            if (ret)
                ok( size == 5, "%d: test failed, number of characters copied: %d instead of 5\n", i, size );
            else
                ok( !size, "%d: test failed, number of characters copied: %d instead of 0\n", i, size );
        }
        else
        {
            DWORD err = GetLastError();
            ok( !ret, "%d: WritePrivateProfileString succeeded\n", i );
            if (!ret)
                ok( err == pe[i].write_error, "%d: WritePrivateProfileString failed with error %u/%u\n",
                    i, err, pe[i].write_error );
            CloseHandle(h);
            size = GetPrivateProfileStringA(SECTION, KEY, 0, buffer, MAX_PATH, testfile1);
            ok( !size, "%d: test failed, number of characters copied: %d instead of 0\n", i, size );
        }

        ok( DeleteFileA(testfile1), "delete failed\n" );
    }

    h = CreateFileA(testfile2, 129, 0, ((void*)0), CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, ((void*)0));
    sprintf( buffer, "[%s]\r\n%s=123\r\n", SECTION, KEY );
    ok( WriteFile( h, buffer, strlen(buffer), &size, ((void*)0) ), "failed to write\n" );
    CloseHandle( h );

    for (i=0; i < sizeof(pe)/sizeof(pe[0]); i++)
    {
        h = CreateFileA(testfile2, pe[i].dwDesiredAccess, pe[i].dwShareMode, ((void*)0),
                       OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, ((void*)0));
        ok(INVALID_HANDLE_VALUE != h, "%d: CreateFile failed\n",i);
        SetLastError(0xdeadbeef);
        ret = GetPrivateProfileStringA(SECTION, KEY, ((void*)0), buffer, MAX_PATH, testfile2);

        if (!pe[i].read_error)
            ok( ret ||
                broken(!ret && GetLastError() == 0xdeadbeef),
                "%d: GetPrivateProfileString failed with error %u\n", i, GetLastError() );
        else
            ok( !ret, "%d: GetPrivateProfileString succeeded\n", i );
        CloseHandle(h);
    }
    ok( DeleteFileA(testfile2), "delete failed\n" );
}
