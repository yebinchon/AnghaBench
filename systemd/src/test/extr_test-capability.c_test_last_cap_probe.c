
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CAP_LAST_CAP ;
 int PR_CAPBSET_READ ;
 int assert_se (int) ;
 unsigned long cap_last_cap () ;
 scalar_t__ prctl (int ,unsigned long) ;

__attribute__((used)) static void test_last_cap_probe(void) {
        unsigned long p = (unsigned long)CAP_LAST_CAP;

        if (prctl(PR_CAPBSET_READ, p) < 0) {
                for (p--; p > 0; p --)
                        if (prctl(PR_CAPBSET_READ, p) >= 0)
                                break;
        } else {
                for (;; p++)
                        if (prctl(PR_CAPBSET_READ, p+1) < 0)
                                break;
        }

        assert_se(p != 0);
        assert_se(p == cap_last_cap());
}
