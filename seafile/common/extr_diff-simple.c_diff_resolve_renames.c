
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ status; int sha1; int name; int new_name; int type; struct TYPE_14__* data; struct TYPE_14__* next; } ;
typedef TYPE_1__ GList ;
typedef int GHashTable ;
typedef TYPE_1__ DiffEntry ;


 scalar_t__ DIFF_STATUS_ADDED ;
 scalar_t__ DIFF_STATUS_DELETED ;
 scalar_t__ DIFF_STATUS_DIR_ADDED ;
 scalar_t__ DIFF_STATUS_DIR_DELETED ;
 int DIFF_STATUS_DIR_RENAMED ;
 int DIFF_STATUS_RENAMED ;
 int ccnet_sha1_equal ;
 int ccnet_sha1_hash ;
 int diff_entry_free (TYPE_1__*) ;
 TYPE_1__* diff_entry_new (int ,int,int ,int ) ;
 int g_hash_table_destroy (int *) ;
 int g_hash_table_insert (int *,int ,TYPE_1__*) ;
 TYPE_1__* g_hash_table_lookup (int *,int ) ;
 int * g_hash_table_new (int ,int ) ;
 int g_hash_table_remove (int *,int ) ;
 TYPE_1__* g_list_delete_link (TYPE_1__*,TYPE_1__*) ;
 TYPE_1__* g_list_prepend (TYPE_1__*,TYPE_1__*) ;
 int g_strdup (int ) ;
 scalar_t__ memcmp (int ,unsigned char*,int) ;
 int memset (unsigned char*,int ,int) ;

void
diff_resolve_renames (GList **diff_entries)
{
    GHashTable *deleted;
    GList *p;
    GList *added = ((void*)0);
    DiffEntry *de;
    unsigned char empty_sha1[20];

    memset (empty_sha1, 0, 20);


    deleted = g_hash_table_new (ccnet_sha1_hash, ccnet_sha1_equal);


    for (p = *diff_entries; p != ((void*)0); p = p->next) {
        de = p->data;
        if ((de->status == DIFF_STATUS_DELETED ||
             de->status == DIFF_STATUS_DIR_DELETED) &&
            memcmp (de->sha1, empty_sha1, 20) != 0)
            g_hash_table_insert (deleted, de->sha1, p);
    }


    for (p = *diff_entries; p != ((void*)0); p = p->next) {
        de = p->data;
        if ((de->status == DIFF_STATUS_ADDED ||
             de->status == DIFF_STATUS_DIR_ADDED) &&
            memcmp (de->sha1, empty_sha1, 20) != 0)
            added = g_list_prepend (added, p);
    }




    p = added;
    while (p != ((void*)0)) {
        GList *p_add, *p_del;
        DiffEntry *de_add, *de_del, *de_rename;
        int rename_status;

        p_add = p->data;
        de_add = p_add->data;

        p_del = g_hash_table_lookup (deleted, de_add->sha1);
        if (p_del) {
            de_del = p_del->data;

            if (de_add->status == DIFF_STATUS_DIR_ADDED)
                rename_status = DIFF_STATUS_DIR_RENAMED;
            else
                rename_status = DIFF_STATUS_RENAMED;

            de_rename = diff_entry_new (de_del->type, rename_status,
                                        de_del->sha1, de_del->name);
            de_rename->new_name = g_strdup(de_add->name);

            *diff_entries = g_list_delete_link (*diff_entries, p_add);
            *diff_entries = g_list_delete_link (*diff_entries, p_del);
            *diff_entries = g_list_prepend (*diff_entries, de_rename);

            g_hash_table_remove (deleted, de_add->sha1);

            diff_entry_free (de_add);
            diff_entry_free (de_del);
        }

        p = g_list_delete_link (p, p);
    }

    g_hash_table_destroy (deleted);
}
