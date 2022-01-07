
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirstack {size_t num_dirs; int * dirs; } ;
typedef int WCHAR ;
typedef size_t UINT ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int strcmpW (int ,int const*) ;

__attribute__((used)) static BOOL seen_dir( struct dirstack *dirstack, const WCHAR *path )
{
    UINT i;
    for (i = 0; i < dirstack->num_dirs; i++) if (!strcmpW( dirstack->dirs[i], path )) return TRUE;
    return FALSE;
}
