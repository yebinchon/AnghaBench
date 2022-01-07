
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JsonVariant ;
typedef int JsonDispatchFlags ;


 unsigned long CLONE_NEWCGROUP ;
 unsigned long CLONE_NEWIPC ;
 unsigned long CLONE_NEWNET ;
 unsigned long CLONE_NEWNS ;
 unsigned long CLONE_NEWPID ;
 unsigned long CLONE_NEWUSER ;
 unsigned long CLONE_NEWUTS ;
 int EINVAL ;
 int SYNTHETIC_ERRNO (int ) ;
 int assert (unsigned long*) ;
 int assert_se (char const*) ;
 int json_log (int *,int ,int ,char*,char const*) ;
 char* json_variant_string (int *) ;
 scalar_t__ streq (char const*,char*) ;

__attribute__((used)) static int oci_namespace_type(const char *name, JsonVariant *v, JsonDispatchFlags flags, void *userdata) {
        unsigned long *nsflags = userdata;
        const char *n;

        assert(nsflags);
        assert_se(n = json_variant_string(v));



        if (streq(n, "pid"))
                *nsflags = CLONE_NEWPID;
        else if (streq(n, "network"))
                *nsflags = CLONE_NEWNET;
        else if (streq(n, "mount"))
                *nsflags = CLONE_NEWNS;
        else if (streq(n, "ipc"))
                *nsflags = CLONE_NEWIPC;
        else if (streq(n, "uts"))
                *nsflags = CLONE_NEWUTS;
        else if (streq(n, "user"))
                *nsflags = CLONE_NEWUSER;
        else if (streq(n, "cgroup"))
                *nsflags = CLONE_NEWCGROUP;
        else
                return json_log(v, flags, SYNTHETIC_ERRNO(EINVAL),
                                "Unknown cgroup type, refusing: %s", n);

        return 0;
}
