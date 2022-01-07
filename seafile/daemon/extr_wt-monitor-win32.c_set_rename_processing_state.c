
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int processing; int old_path; } ;
typedef TYPE_1__ RenameInfo ;


 int TRUE ;
 int g_strdup (char const*) ;

__attribute__((used)) inline static void
set_rename_processing_state (RenameInfo *info, const char *path)
{
    info->old_path = g_strdup(path);
    info->processing = TRUE;
}
