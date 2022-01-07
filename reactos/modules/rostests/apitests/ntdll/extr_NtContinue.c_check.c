
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int SegGs; int SegFs; int SegEs; int SegDs; int Edi; int Esi; int Ebx; int Edx; int Ecx; int Eax; int Ebp; int Eip; int Esp; int SegCs; int EFlags; int SegSs; } ;
struct TYPE_4__ {scalar_t__ ContextFlags; int SegGs; int SegFs; int SegEs; int SegDs; int Edi; int Esi; int Ebx; int Edx; int Ecx; int Eax; int Ebp; int Eip; int Esp; int SegCs; int EFlags; int SegSs; } ;
typedef TYPE_1__ CONTEXT ;


 scalar_t__ CONTEXT_FULL ;
 int NTC_EFLAGS_BITS ;
 int NTC_SEGMENT_BITS ;
 TYPE_2__ continueContext ;
 int jmpbuf ;
 int longjmp (int ,int) ;
 int ok (int,char*,int,...) ;

void check(CONTEXT * pContext)
{
    longjmp(jmpbuf, 1);
}
