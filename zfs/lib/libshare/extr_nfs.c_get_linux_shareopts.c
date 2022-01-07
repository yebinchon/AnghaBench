
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SA_OK ;
 int add_linux_shareopt (char**,char*,int *) ;
 int assert (int ) ;
 int foreach_nfs_shareopt (char const*,int ,char**) ;
 int free (char*) ;
 int get_linux_shareopts_cb ;

__attribute__((used)) static int
get_linux_shareopts(const char *shareopts, char **plinux_opts)
{
 int rc;

 assert(plinux_opts != ((void*)0));

 *plinux_opts = ((void*)0);


 (void) add_linux_shareopt(plinux_opts, "no_subtree_check", ((void*)0));


 (void) add_linux_shareopt(plinux_opts, "mountpoint", ((void*)0));

 rc = foreach_nfs_shareopt(shareopts, get_linux_shareopts_cb,
     plinux_opts);

 if (rc != SA_OK) {
  free(*plinux_opts);
  *plinux_opts = ((void*)0);
 }

 return (rc);
}
