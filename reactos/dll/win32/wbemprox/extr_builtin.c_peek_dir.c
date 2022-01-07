
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirstack {int num_dirs; int const** dirs; } ;
typedef int WCHAR ;



__attribute__((used)) static const WCHAR *peek_dir( struct dirstack *dirstack )
{
    if (!dirstack->num_dirs) return ((void*)0);
    return dirstack->dirs[dirstack->num_dirs - 1];
}
