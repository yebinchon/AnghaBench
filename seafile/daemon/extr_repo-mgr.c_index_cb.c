
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int gint64 ;
typedef int gboolean ;
struct TYPE_2__ {int disable_block_hash; int fs_mgr; } ;
typedef int SeafileCrypt ;


 TYPE_1__* seaf ;
 scalar_t__ seaf_fs_manager_index_blocks (int ,char const*,int,char const*,unsigned char*,int *,int *,int ,int) ;
 int seaf_warning (char*,char const*) ;

__attribute__((used)) static int
index_cb (const char *repo_id,
          int version,
          const char *path,
          unsigned char sha1[],
          SeafileCrypt *crypt,
          gboolean write_data)
{
    gint64 size;


    if (seaf_fs_manager_index_blocks (seaf->fs_mgr, repo_id, version,
                                      path, sha1, &size, crypt, write_data, !seaf->disable_block_hash) < 0) {
        seaf_warning ("Failed to index file %s.\n", path);
        return -1;
    }
    return 0;
}
