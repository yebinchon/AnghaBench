
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int root_entries; scalar_t__ root_start; scalar_t__ root_cluster; } ;
typedef TYPE_1__ DOS_FS ;
typedef int DOS_FILE ;
typedef int DIR_ENT ;


 int add_file (TYPE_1__*,int ***,int *,scalar_t__,int *) ;
 int check_dir (TYPE_1__*,int **,int ) ;
 scalar_t__ check_files (TYPE_1__*,int *) ;
 int fp_root ;
 int lfn_check_orphaned () ;
 int new_dir () ;
 int * root ;
 int subdirs (TYPE_1__*,int *,int *) ;

int scan_root(DOS_FS * fs)
{
    DOS_FILE **chain;
    int i;

    root = ((void*)0);
    chain = &root;
    new_dir();
    if (fs->root_cluster) {
 add_file(fs, &chain, ((void*)0), 0, &fp_root);
    } else {
 for (i = 0; i < fs->root_entries; i++)
     add_file(fs, &chain, ((void*)0), fs->root_start + i * sizeof(DIR_ENT),
       &fp_root);
    }
    lfn_check_orphaned();
    (void)check_dir(fs, &root, 0);
    if (check_files(fs, root))
 return 1;
    return subdirs(fs, ((void*)0), &fp_root);
}
