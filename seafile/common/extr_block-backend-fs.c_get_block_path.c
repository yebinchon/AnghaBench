
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* be_priv; } ;
struct TYPE_4__ {char* block_dir; char const* v0_block_dir; int v0_block_dir_len; } ;
typedef TYPE_1__ FsPriv ;
typedef TYPE_2__ BlockBackend ;


 int SEAF_PATH_MAX ;
 int memcpy (char*,char const*,int) ;
 int snprintf (char*,int ,char*,char*,char const*) ;

__attribute__((used)) static char *
get_block_path (BlockBackend *bend,
                const char *block_sha1,
                char path[],
                const char *store_id,
                int version)
{
    FsPriv *priv = bend->be_priv;
    char *pos = path;
    int n;
    n = snprintf (path, SEAF_PATH_MAX, "%s/%s/", priv->block_dir, store_id);
    pos += n;


    memcpy (pos, block_sha1, 2);
    pos[2] = '/';
    pos += 3;

    memcpy (pos, block_sha1 + 2, 41 - 2);

    return path;
}
