
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uid_t ;
struct TYPE_4__ {scalar_t__ capability_ambient_set; int secure_bits; } ;
typedef TYPE_1__ ExecContext ;


 int PR_GET_SECUREBITS ;
 int PR_SET_SECUREBITS ;
 int SECURE_KEEP_CAPS ;
 int assert (TYPE_1__ const*) ;
 int errno ;
 scalar_t__ prctl (int ,...) ;
 scalar_t__ setresuid (scalar_t__,scalar_t__,scalar_t__) ;
 int uid_is_valid (scalar_t__) ;

__attribute__((used)) static int enforce_user(const ExecContext *context, uid_t uid) {
        assert(context);

        if (!uid_is_valid(uid))
                return 0;




        if (context->capability_ambient_set != 0) {




                if (uid != 0) {
                        int sb = context->secure_bits | 1<<SECURE_KEEP_CAPS;

                        if (prctl(PR_GET_SECUREBITS) != sb)
                                if (prctl(PR_SET_SECUREBITS, sb) < 0)
                                        return -errno;
                }
        }


        if (setresuid(uid, uid, uid) < 0)
                return -errno;






        return 0;
}
