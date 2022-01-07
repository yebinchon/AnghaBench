
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_ERR ;
 int MS_BIND ;
 int MS_RDONLY ;
 int MS_REMOUNT ;
 int MS_SLAVE ;
 int arg_machine ;
 int log_error_errno (int,char*) ;
 int mkdir_p (char const*,int) ;
 int mount_verbose (int ,char const*,char const*,int *,int,int *) ;
 char* prefix_roota (char const*,char*) ;
 char* strjoina (char*,int ) ;
 int userns_mkdir (char const*,char*,int,int ,int ) ;

__attribute__((used)) static int setup_propagate(const char *root) {
        const char *p, *q;
        int r;

        (void) mkdir_p("/run/systemd/nspawn/", 0755);
        (void) mkdir_p("/run/systemd/nspawn/propagate", 0600);
        p = strjoina("/run/systemd/nspawn/propagate/", arg_machine);
        (void) mkdir_p(p, 0600);

        r = userns_mkdir(root, "/run/systemd", 0755, 0, 0);
        if (r < 0)
                return log_error_errno(r, "Failed to create /run/systemd: %m");

        r = userns_mkdir(root, "/run/systemd/nspawn", 0755, 0, 0);
        if (r < 0)
                return log_error_errno(r, "Failed to create /run/systemd/nspawn: %m");

        r = userns_mkdir(root, "/run/systemd/nspawn/incoming", 0600, 0, 0);
        if (r < 0)
                return log_error_errno(r, "Failed to create /run/systemd/nspawn/incoming: %m");

        q = prefix_roota(root, "/run/systemd/nspawn/incoming");
        r = mount_verbose(LOG_ERR, p, q, ((void*)0), MS_BIND, ((void*)0));
        if (r < 0)
                return r;

        r = mount_verbose(LOG_ERR, ((void*)0), q, ((void*)0), MS_BIND|MS_REMOUNT|MS_RDONLY, ((void*)0));
        if (r < 0)
                return r;



        return mount_verbose(LOG_ERR, ((void*)0), q, ((void*)0), MS_SLAVE, ((void*)0));
}
