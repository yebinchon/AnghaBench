
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int processing; int old_path; int last_cookie; } ;
typedef TYPE_1__ RenameInfo ;


 int TRUE ;
 int g_strdup (char const*) ;

__attribute__((used)) inline static void
set_rename_processing_state (RenameInfo *info, uint32_t cookie, const char *path)
{
    info->last_cookie = cookie;
    info->old_path = g_strdup(path);
    info->processing = TRUE;
}
