
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OrderOperator ;
 int assert_not_reached (char*) ;

__attribute__((used)) static bool test_order(int k, OrderOperator p) {

        switch (p) {

        case 130:
                return k < 0;

        case 129:
                return k <= 0;

        case 133:
                return k == 0;

        case 128:
                return k != 0;

        case 131:
                return k >= 0;

        case 132:
                return k > 0;

        default:
                assert_not_reached("unknown order");

        }
}
