
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* be_priv; } ;
struct TYPE_4__ {int tmp_dir; } ;
typedef TYPE_1__ FsPriv ;
typedef TYPE_2__ BlockBackend ;


 int g_free (char*) ;
 int g_mkstemp (char*) ;
 char* g_strdup_printf (char*,int ,char const*) ;

__attribute__((used)) static int
open_tmp_file (BlockBackend *bend,
               const char *basename,
               char **path)
{
    FsPriv *priv = bend->be_priv;
    int fd;

    *path = g_strdup_printf ("%s/%s.XXXXXX", priv->tmp_dir, basename);
    fd = g_mkstemp (*path);
    if (fd < 0)
        g_free (*path);

    return fd;
}
