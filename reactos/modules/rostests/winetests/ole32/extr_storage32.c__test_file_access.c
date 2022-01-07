
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct access_res {int gothandle; int lasterr; scalar_t__ ignore; } ;
typedef int LPCSTR ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;


 int ARRAY_SIZE (int *) ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileA (int ,int ,int ,int *,int ,int ,int ) ;
 int FILE_ATTRIBUTE_NORMAL ;
 int GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int OPEN_EXISTING ;
 int SetLastError (int) ;
 int * access_modes ;
 scalar_t__ broken (int) ;
 int ok (int,char*,int,int,int,int) ;
 int * share_modes ;

__attribute__((used)) static void _test_file_access(LPCSTR file, const struct access_res *ares, DWORD line)
{
    int i, j, idx = 0;

    for (i = 0; i < ARRAY_SIZE(access_modes); i++)
    {
        for (j = 0; j < ARRAY_SIZE(share_modes); j++)
        {
            DWORD lasterr;
            HANDLE hfile;

            if (ares[idx].ignore)
                continue;

            SetLastError(0xdeadbeef);
            hfile = CreateFileA(file, access_modes[i], share_modes[j], ((void*)0), OPEN_EXISTING,
                                FILE_ATTRIBUTE_NORMAL, 0);
            lasterr = GetLastError();

            ok((hfile != INVALID_HANDLE_VALUE) == ares[idx].gothandle,
               "(%d, handle, %d): Expected %d, got %d\n",
               line, idx, ares[idx].gothandle,
               (hfile != INVALID_HANDLE_VALUE));

            ok(lasterr == ares[idx].lasterr ||
               broken(lasterr == 0xdeadbeef) ,
               "(%d, lasterr, %d): Expected %d, got %d\n",
               line, idx, ares[idx].lasterr, lasterr);

            CloseHandle(hfile);
            idx++;
        }
    }
}
