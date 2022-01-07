
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
 int UINT64_C (int) ;
 int assert (int) ;
 int assert_se (int) ;
 int cap_free (int) ;
 int cap_get_flag (int,int,int ,scalar_t__*) ;
 int cap_get_proc () ;
 int capability_update_inherited_set (int,int) ;

__attribute__((used)) static void test_update_inherited_set(void) {
        cap_t caps;
        uint64_t set = 0;
        cap_flag_value_t fv;

        caps = cap_get_proc();
        assert_se(caps);

        set = (UINT64_C(1) << CAP_CHOWN);

        assert_se(!capability_update_inherited_set(caps, set));
        assert_se(!cap_get_flag(caps, CAP_CHOWN, CAP_INHERITABLE, &fv));
        assert(fv == CAP_SET);

        cap_free(caps);
}
