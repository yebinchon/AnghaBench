
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int log_error_errno (int,char*) ;
 int printf (char*,unsigned long) ;
 int rdrand (unsigned long*) ;

__attribute__((used)) static void test_rdrand(void) {
        int r, i;

        for (i = 0; i < 10; i++) {
                unsigned long x = 0;

                r = rdrand(&x);
                if (r < 0) {
                        log_error_errno(r, "RDRAND failed: %m");
                        return;
                }

                printf("%lx\n", x);
        }
}
