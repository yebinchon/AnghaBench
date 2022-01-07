
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int gboolean ;
struct TYPE_4__ {int n_blocks; int * blk_sha1s; } ;
typedef TYPE_1__ Seafile ;
typedef int SeafFSManager ;
typedef int BlockList ;


 int FALSE ;
 int SEAF_METADATA_TYPE_FILE ;
 int TRUE ;
 int block_list_insert (int *,int ) ;
 TYPE_1__* seaf_fs_manager_get_seafile (int *,char const*,int,char const*) ;
 int seaf_warning (char*,char const*) ;
 int seafile_unref (TYPE_1__*) ;

__attribute__((used)) static gboolean
fill_blocklist (SeafFSManager *mgr,
                const char *repo_id, int version,
                const char *obj_id, int type,
                void *user_data, gboolean *stop)
{
    BlockList *bl = user_data;
    Seafile *seafile;
    int i;

    if (type == SEAF_METADATA_TYPE_FILE) {
        seafile = seaf_fs_manager_get_seafile (mgr, repo_id, version, obj_id);
        if (!seafile) {
            seaf_warning ("[fs mgr] Failed to find file %s.\n", obj_id);
            return FALSE;
        }

        for (i = 0; i < seafile->n_blocks; ++i)
            block_list_insert (bl, seafile->blk_sha1s[i]);

        seafile_unref (seafile);
    }

    return TRUE;
}
