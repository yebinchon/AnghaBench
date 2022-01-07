
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ tag; } ;
typedef TYPE_1__ BMK_benchOutcome_t ;



int BMK_isSuccessful_benchOutcome(BMK_benchOutcome_t outcome)
{
    return outcome.tag == 0;
}
