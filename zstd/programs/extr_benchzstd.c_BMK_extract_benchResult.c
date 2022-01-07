
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ tag; int internal_never_use_directly; } ;
typedef int BMK_benchResult_t ;
typedef TYPE_1__ BMK_benchOutcome_t ;


 int assert (int) ;

BMK_benchResult_t BMK_extract_benchResult(BMK_benchOutcome_t outcome)
{
    assert(outcome.tag == 0);
    return outcome.internal_never_use_directly;
}
