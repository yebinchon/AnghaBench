
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_ERR ;
 int MS_BIND ;
 int MS_NODEV ;
 int MS_NOEXEC ;
 int MS_NOSUID ;
 int MS_RDONLY ;
 int MS_REMOUNT ;
 int assert (char const*) ;
 int mount_verbose (int ,char const*,char const*,int *,int,int *) ;

__attribute__((used)) static int mount_systemd_cgroup_writable_one(const char *root, const char *own) {
        int r;

        assert(root);
        assert(own);


        r = mount_verbose(LOG_ERR, own, own, ((void*)0), MS_BIND, ((void*)0));
        if (r < 0)
                return r;


        return mount_verbose(LOG_ERR, ((void*)0), root, ((void*)0),
                             MS_BIND|MS_REMOUNT|MS_NOSUID|MS_NOEXEC|MS_NODEV|MS_RDONLY, ((void*)0));
}
