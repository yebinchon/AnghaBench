
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int locked_files; } ;
typedef TYPE_1__ LockedFileSet ;
typedef int LockedFile ;


 scalar_t__ g_hash_table_lookup (int ,char const*) ;

LockedFile *
locked_file_set_lookup (LockedFileSet *fset, const char *path)
{
    return (LockedFile *) g_hash_table_lookup (fset->locked_files, path);
}
