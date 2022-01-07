
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int success ;


 int EAGAIN ;
 int EOPNOTSUPP ;
 int EUCLEAN ;
 int SYNTHETIC_ERRNO (int ) ;
 unsigned long ULONG_MAX ;
 scalar_t__ __get_cpuid (int,int*,int*,int*,int*) ;
 int bit_RDRND ;
 int log_debug_errno (int ,char*,unsigned long) ;
 int msan_unpoison (int *,int) ;

int rdrand(unsigned long *ret) {
        static int have_rdrand = -1;
        unsigned long v;
        uint8_t success;

        if (have_rdrand < 0) {
                uint32_t eax, ebx, ecx, edx;


                if (__get_cpuid(1, &eax, &ebx, &ecx, &edx) == 0) {
                        have_rdrand = 0;
                        return -EOPNOTSUPP;
                }






                have_rdrand = !!(ecx & (1U << 30));
        }

        if (have_rdrand == 0)
                return -EOPNOTSUPP;

        asm volatile("rdrand %0;"
                     "setc %1"
                     : "=r" (v),
                       "=qm" (success));
        msan_unpoison(&success, sizeof(success));
        if (!success)
                return -EAGAIN;
        if (v == 0 || v == ULONG_MAX)
                return log_debug_errno(SYNTHETIC_ERRNO(EUCLEAN),
                                       "RDRAND returned suspicious value %lx, assuming bad hardware RNG, not using value.", v);

        *ret = v;
        return 0;



}
