
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* obj_dir; char const* v0_obj_dir; int v0_dir_len; } ;
typedef TYPE_1__ FsPriv ;


 int SEAF_PATH_MAX ;
 int memcpy (char*,char const*,int) ;
 int snprintf (char*,int ,char*,char*,char const*) ;

__attribute__((used)) static void
id_to_path (FsPriv *priv, const char *obj_id, char path[],
            const char *repo_id, int version)
{
    char *pos = path;
    int n;
    n = snprintf (path, SEAF_PATH_MAX, "%s/%s/", priv->obj_dir, repo_id);
    pos += n;


    memcpy (pos, obj_id, 2);
    pos[2] = '/';
    pos += 3;

    memcpy (pos, obj_id + 2, 41 - 2);
}
