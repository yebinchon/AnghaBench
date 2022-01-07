
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* old_path; } ;
typedef TYPE_1__ RenameInfo ;


 int g_free (TYPE_1__*) ;

__attribute__((used)) static void free_rename_info (RenameInfo *info)
{
    g_free (info->old_path);
    g_free (info);
}
