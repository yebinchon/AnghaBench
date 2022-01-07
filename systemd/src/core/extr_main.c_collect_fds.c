
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char const FDSet ;


 scalar_t__ arg_serialization ;
 int assert (char const**) ;
 int assert_se (int) ;
 int fdset_cloexec (char const*,int) ;
 int fdset_new_fill (char const**) ;
 scalar_t__ fdset_remove (char const*,int ) ;
 int fileno (scalar_t__) ;
 int log_emergency_errno (int,char*) ;

__attribute__((used)) static int collect_fds(FDSet **ret_fds, const char **ret_error_message) {
        int r;

        assert(ret_fds);
        assert(ret_error_message);

        r = fdset_new_fill(ret_fds);
        if (r < 0) {
                *ret_error_message = "Failed to allocate fd set";
                return log_emergency_errno(r, "Failed to allocate fd set: %m");
        }

        fdset_cloexec(*ret_fds, 1);

        if (arg_serialization)
                assert_se(fdset_remove(*ret_fds, fileno(arg_serialization)) >= 0);

        return 0;
}
