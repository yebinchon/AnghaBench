
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* uint64_t ;
struct security_info {int notify_access; } ;
struct security_assessor {int dummy; } ;


 int assert (char**) ;
 char* streq_ptr (int ,char*) ;

__attribute__((used)) static int assess_notify_access(
                const struct security_assessor *a,
                const struct security_info *info,
                const void *data,
                uint64_t *ret_badness,
                char **ret_description) {

        assert(ret_badness);
        assert(ret_description);

        *ret_badness = streq_ptr(info->notify_access, "all");
        *ret_description = ((void*)0);

        return 0;
}
