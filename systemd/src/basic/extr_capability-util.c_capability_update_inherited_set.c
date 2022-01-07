
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long uint64_t ;
typedef scalar_t__ cap_value_t ;
typedef int cap_t ;


 int CAP_INHERITABLE ;
 int CAP_SET ;
 unsigned long UINT64_C (int) ;
 unsigned long cap_last_cap () ;
 scalar_t__ cap_set_flag (int ,int ,int,scalar_t__*,int ) ;
 int errno ;

int capability_update_inherited_set(cap_t caps, uint64_t set) {
        unsigned long i;




        for (i = 0; i <= cap_last_cap(); i++) {

                if (set & (UINT64_C(1) << i)) {
                        cap_value_t v;

                        v = (cap_value_t) i;


                        if (cap_set_flag(caps, CAP_INHERITABLE, 1, &v, CAP_SET) < 0)
                                return -errno;
                }
        }

        return 0;
}
