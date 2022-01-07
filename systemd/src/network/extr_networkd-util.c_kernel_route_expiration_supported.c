
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* parameter; int type; } ;
typedef TYPE_1__ Condition ;


 int CONDITION_KERNEL_VERSION ;
 int condition_test (TYPE_1__*) ;

int kernel_route_expiration_supported(void) {
        static int cached = -1;
        int r;

        if (cached < 0) {
                Condition c = {
                        .type = CONDITION_KERNEL_VERSION,
                        .parameter = (char *) ">= 4.5"
                };
                r = condition_test(&c);
                if (r < 0)
                        return r;

                cached = r;
        }
        return cached;
}
