
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int cap_t ;
typedef scalar_t__ cap_flag_value_t ;


 int CAP_CHOWN ;
 int CAP_INHERITABLE ;
 scalar_t__ CAP_SET ;
 int PR_CAP_AMBIENT ;
 int PR_CAP_AMBIENT_IS_SET ;
 int UINT64_C (int) ;
 int assert (int) ;
 int assert_se (int) ;
 int cap_free (int ) ;
 int cap_get_flag (int ,int,int ,scalar_t__*) ;
 int cap_get_proc () ;
 int capability_ambient_set_apply (int,int) ;
 int prctl (int ,int ,int,int ,int ) ;

__attribute__((used)) static void test_set_ambient_caps(void) {
        cap_t caps;
        uint64_t set = 0;
        cap_flag_value_t fv;

        assert_se(prctl(PR_CAP_AMBIENT, PR_CAP_AMBIENT_IS_SET, CAP_CHOWN, 0, 0) == 0);

        set = (UINT64_C(1) << CAP_CHOWN);

        assert_se(!capability_ambient_set_apply(set, 1));

        caps = cap_get_proc();
        assert_se(!cap_get_flag(caps, CAP_CHOWN, CAP_INHERITABLE, &fv));
        assert(fv == CAP_SET);
        cap_free(caps);

        assert_se(prctl(PR_CAP_AMBIENT, PR_CAP_AMBIENT_IS_SET, CAP_CHOWN, 0, 0) == 1);
}
