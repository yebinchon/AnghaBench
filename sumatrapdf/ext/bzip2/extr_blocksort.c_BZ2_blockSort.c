
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UInt32 ;
typedef int UInt16 ;
typedef int UChar ;
struct TYPE_3__ {int nblock; int verbosity; int workFactor; int origPtr; int arr2; int arr1; scalar_t__* ftab; int * block; scalar_t__* ptr; } ;
typedef int Int32 ;
typedef TYPE_1__ EState ;


 int AssertH (int,int) ;
 int BZ_N_OVERSHOOT ;
 int VPrintf0 (char*) ;
 int VPrintf3 (char*,int,int,float) ;
 int fallbackSort (int ,int ,scalar_t__*,int,int) ;
 int mainSort (scalar_t__*,int *,int *,scalar_t__*,int,int,int*) ;

void BZ2_blockSort ( EState* s )
{
   UInt32* ptr = s->ptr;
   UChar* block = s->block;
   UInt32* ftab = s->ftab;
   Int32 nblock = s->nblock;
   Int32 verb = s->verbosity;
   Int32 wfact = s->workFactor;
   UInt16* quadrant;
   Int32 budget;
   Int32 budgetInit;
   Int32 i;

   if (nblock < 10000) {
      fallbackSort ( s->arr1, s->arr2, ftab, nblock, verb );
   } else {





      i = nblock+BZ_N_OVERSHOOT;
      if (i & 1) i++;
      quadrant = (UInt16*)(&(block[i]));
      if (wfact < 1 ) wfact = 1;
      if (wfact > 100) wfact = 100;
      budgetInit = nblock * ((wfact-1) / 3);
      budget = budgetInit;

      mainSort ( ptr, block, quadrant, ftab, nblock, verb, &budget );
      if (verb >= 3)
         VPrintf3 ( "      %d work, %d block, ratio %5.2f\n",
                    budgetInit - budget,
                    nblock,
                    (float)(budgetInit - budget) /
                    (float)(nblock==0 ? 1 : nblock) );
      if (budget < 0) {
         if (verb >= 2)
            VPrintf0 ( "    too repetitive; using fallback"
                       " sorting algorithm\n" );
         fallbackSort ( s->arr1, s->arr2, ftab, nblock, verb );
      }
   }

   s->origPtr = -1;
   for (i = 0; i < s->nblock; i++)
      if (ptr[i] == 0)
         { s->origPtr = i; break; };

   AssertH( s->origPtr != -1, 1003 );
}
