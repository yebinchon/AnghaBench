
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* member_0; int member_4; int member_3; int const member_2; int member_1; } ;
typedef TYPE_1__ Verb ;


 int EINVAL ;
 int STRV_MAKE (int *) ;


 int test_dispatch_one (int ,TYPE_1__ const*,int ) ;

__attribute__((used)) static void test_verbs_no_default(void) {
        static const Verb verbs[] = {
                { "help", 129, 129, 0, 128 },
                {},
        };

        test_dispatch_one(STRV_MAKE(((void*)0)), verbs, -EINVAL);
}
