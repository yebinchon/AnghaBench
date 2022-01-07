
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int internal_never_use_directly; scalar_t__ tag; } ;
typedef int BMK_benchResult_t ;
typedef TYPE_1__ BMK_benchOutcome_t ;



__attribute__((used)) static BMK_benchOutcome_t BMK_benchOutcome_setValidResult(BMK_benchResult_t result)
{
    BMK_benchOutcome_t b;
    b.tag = 0;
    b.internal_never_use_directly = result;
    return b;
}
