
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int gboolean ;
struct TYPE_7__ {int size; int modifier; int mode; int mtime; } ;
struct TYPE_6__ {int size; int modifier; int mode; int mtime; int id; } ;
typedef int SeafFSManager ;
typedef TYPE_1__ SeafDirent ;
typedef int GList ;
typedef TYPE_2__ DiffEntry ;


 int DIFF_STATUS_ADDED ;
 int DIFF_STATUS_DIR_ADDED ;
 int DIFF_TYPE_COMMITS ;
 int EMPTY_SHA1 ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int TRUE ;
 TYPE_2__* diff_entry_new (int ,int ,unsigned char*,char const*) ;
 int * g_list_prepend (int *,TYPE_2__*) ;
 int g_strdup (int ) ;
 int hex_to_rawdata (int ,unsigned char*,int) ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static gboolean
expand_dir_added_cb (SeafFSManager *mgr,
                     const char *path,
                     SeafDirent *dent,
                     void *user_data,
                     gboolean *stop)
{
    GList **expanded = user_data;
    DiffEntry *de = ((void*)0);
    unsigned char sha1[20];

    hex_to_rawdata (dent->id, sha1, 20);

    if (S_ISDIR(dent->mode) && strcmp(dent->id, EMPTY_SHA1) == 0)
        de = diff_entry_new (DIFF_TYPE_COMMITS, DIFF_STATUS_DIR_ADDED, sha1, path);
    else if (S_ISREG(dent->mode))
        de = diff_entry_new (DIFF_TYPE_COMMITS, DIFF_STATUS_ADDED, sha1, path);

    if (de) {
        de->mtime = dent->mtime;
        de->mode = dent->mode;
        de->modifier = g_strdup(dent->modifier);
        de->size = dent->size;
        *expanded = g_list_prepend (*expanded, de);
    }

    return TRUE;
}
