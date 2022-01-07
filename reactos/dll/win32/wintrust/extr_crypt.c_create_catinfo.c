
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct catinfo {int magic; int file; } ;
typedef int WCHAR ;
typedef struct catinfo* HCATINFO ;


 int CATINFO_MAGIC ;
 int ERROR_OUTOFMEMORY ;
 int GetProcessHeap () ;
 struct catinfo* HeapAlloc (int ,int ,int) ;
 struct catinfo* INVALID_HANDLE_VALUE ;
 int SetLastError (int ) ;
 int strcpyW (int ,int const*) ;

__attribute__((used)) static HCATINFO create_catinfo(const WCHAR *filename)
{
    struct catinfo *ci;

    if (!(ci = HeapAlloc(GetProcessHeap(), 0, sizeof(*ci))))
    {
        SetLastError(ERROR_OUTOFMEMORY);
        return INVALID_HANDLE_VALUE;
    }
    strcpyW(ci->file, filename);
    ci->magic = CATINFO_MAGIC;
    return ci;
}
