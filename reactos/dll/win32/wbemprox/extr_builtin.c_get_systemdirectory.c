
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;


 int GetSystemDirectoryW (int *,int) ;
 int MAX_PATH ;
 int Wow64DisableWow64FsRedirection (void**) ;
 int Wow64RevertWow64FsRedirection (void*) ;
 int * heap_alloc (int) ;

__attribute__((used)) static WCHAR *get_systemdirectory(void)
{
    void *redir;
    WCHAR *ret;

    if (!(ret = heap_alloc( MAX_PATH * sizeof(WCHAR) ))) return ((void*)0);
    Wow64DisableWow64FsRedirection( &redir );
    GetSystemDirectoryW( ret, MAX_PATH );
    Wow64RevertWow64FsRedirection( redir );
    return ret;
}
