
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mp_word ;
struct TYPE_3__ {scalar_t__* dp; } ;
typedef TYPE_1__ mp_int ;
typedef scalar_t__ mp_digit ;


 scalar_t__ DIGIT_BIT ;

__attribute__((used)) static void mp_dr_setup(const mp_int *a, mp_digit *d)
{



   *d = (mp_digit)((((mp_word)1) << ((mp_word)DIGIT_BIT)) -
        ((mp_word)a->dp[0]));
}
