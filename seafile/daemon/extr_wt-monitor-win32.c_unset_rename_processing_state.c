
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int processing; int * old_path; } ;
typedef TYPE_1__ RenameInfo ;


 int FALSE ;
 int g_free (int *) ;

__attribute__((used)) inline static void
unset_rename_processing_state (RenameInfo *info)
{
    g_free (info->old_path);
    info->old_path = ((void*)0);
    info->processing = FALSE;
}
