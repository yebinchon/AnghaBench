
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int internal_never_ever_use_directly; scalar_t__ error_tag_never_ever_use_directly; } ;
typedef int BMK_runTime_t ;
typedef TYPE_1__ BMK_runOutcome_t ;



__attribute__((used)) static BMK_runOutcome_t BMK_setValid_runTime(BMK_runTime_t runTime)
{
    BMK_runOutcome_t outcome;
    outcome.error_tag_never_ever_use_directly = 0;
    outcome.internal_never_ever_use_directly = runTime;
    return outcome;
}
