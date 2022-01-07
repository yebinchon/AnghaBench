
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* member_0; int const member_1; int const member_2; int const member_4; int member_3; } ;
typedef TYPE_1__ Verb ;


 int EINVAL ;
 int STRV_MAKE (char*,...) ;
 int STRV_MAKE_EMPTY ;



 int test_dispatch_one (int ,TYPE_1__ const*,int ) ;

__attribute__((used)) static void test_verbs(void) {
        static const Verb verbs[] = {
                { "help", 130, 130, 0, 128 },
                { "list-images", 130, 1, 0, 128 },
                { "list", 130, 2, 129, 128 },
                { "status", 2, 130, 0, 128 },
                { "show", 130, 130, 0, 128 },
                { "terminate", 2, 130, 0, 128 },
                { "login", 2, 2, 0, 128 },
                { "copy-to", 3, 4, 0, 128 },
                {}
        };


        test_dispatch_one(STRV_MAKE("command-not-found"), verbs, -EINVAL);


        test_dispatch_one(STRV_MAKE("show"), verbs, 0);


        test_dispatch_one(STRV_MAKE("copy-to", "foo"), verbs, -EINVAL);


        test_dispatch_one(STRV_MAKE("status", "foo", "bar"), verbs, 0);


        test_dispatch_one(STRV_MAKE("copy-to", "foo", "bar", "baz", "quux", "qaax"), verbs, -EINVAL);


        test_dispatch_one(STRV_MAKE_EMPTY, verbs, 0);
}
