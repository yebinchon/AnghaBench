
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int gboolean ;
struct TYPE_4__ {scalar_t__ status; int name; } ;
typedef TYPE_1__ DiffEntry ;


 scalar_t__ DIFF_STATUS_ADDED ;
 scalar_t__ DIFF_STATUS_DELETED ;
 scalar_t__ DIFF_STATUS_DIR_ADDED ;
 scalar_t__ DIFF_STATUS_DIR_DELETED ;
 int FALSE ;
 int TRUE ;
 int strlen (int ) ;
 scalar_t__ strncmp (int ,int ,int) ;

__attribute__((used)) static gboolean
is_redundant_empty_dir (DiffEntry *de_dir, DiffEntry *de_file)
{
    int dir_len;

    if (de_dir->status == DIFF_STATUS_DIR_ADDED &&
        de_file->status == DIFF_STATUS_DELETED)
    {
        dir_len = strlen (de_dir->name);
        if (strlen (de_file->name) > dir_len &&
            strncmp (de_dir->name, de_file->name, dir_len) == 0)
            return TRUE;
    }

    if (de_dir->status == DIFF_STATUS_DIR_DELETED &&
        de_file->status == DIFF_STATUS_ADDED)
    {
        dir_len = strlen (de_dir->name);
        if (strlen (de_file->name) > dir_len &&
            strncmp (de_dir->name, de_file->name, dir_len) == 0)
            return TRUE;
    }

    return FALSE;
}
