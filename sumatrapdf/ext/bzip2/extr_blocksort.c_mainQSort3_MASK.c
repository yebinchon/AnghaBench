#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ UInt32 ;
typedef  int /*<<< orphan*/  UInt16 ;
typedef  scalar_t__ UChar ;
typedef  scalar_t__ Int32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 scalar_t__ MAIN_QSORT_DEPTH_THRESH ; 
 scalar_t__ MAIN_QSORT_SMALL_THRESH ; 
 int MAIN_QSORT_STACK_SIZE ; 
 scalar_t__ True ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,scalar_t__*,int /*<<< orphan*/ *,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__*) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static
void FUNC11 ( UInt32* ptr,
                  UChar*  block,
                  UInt16* quadrant,
                  Int32   nblock,
                  Int32   loSt, 
                  Int32   hiSt, 
                  Int32   dSt,
                  Int32*  budget )
{
   Int32 unLo, unHi, ltLo, gtHi, n, m, med;
   Int32 sp, lo, hi, d;

   Int32 stackLo[MAIN_QSORT_STACK_SIZE];
   Int32 stackHi[MAIN_QSORT_STACK_SIZE];
   Int32 stackD [MAIN_QSORT_STACK_SIZE];

   Int32 nextLo[3];
   Int32 nextHi[3];
   Int32 nextD [3];

   sp = 0;
   FUNC8 ( loSt, hiSt, dSt );

   while (sp > 0) {

      FUNC1 ( sp < MAIN_QSORT_STACK_SIZE - 2, 1001 );

      FUNC7 ( lo, hi, d );
      if (hi - lo < MAIN_QSORT_SMALL_THRESH || 
          d > MAIN_QSORT_DEPTH_THRESH) {
         FUNC2 ( ptr, block, quadrant, nblock, lo, hi, d, budget );
         if (*budget < 0) return;
         continue;
      }

      med = (Int32) 
            FUNC3 ( block[ptr[ lo         ]+d],
                    block[ptr[ hi         ]+d],
                    block[ptr[ (lo+hi)>>1 ]+d] );

      unLo = ltLo = lo;
      unHi = gtHi = hi;

      while (True) {
         while (True) {
            if (unLo > unHi) break;
            n = ((Int32)block[ptr[unLo]+d]) - med;
            if (n == 0) { 
               FUNC9(ptr[unLo], ptr[ltLo]); 
               ltLo++; unLo++; continue; 
            };
            if (n >  0) break;
            unLo++;
         }
         while (True) {
            if (unLo > unHi) break;
            n = ((Int32)block[ptr[unHi]+d]) - med;
            if (n == 0) { 
               FUNC9(ptr[unHi], ptr[gtHi]); 
               gtHi--; unHi--; continue; 
            };
            if (n <  0) break;
            unHi--;
         }
         if (unLo > unHi) break;
         FUNC9(ptr[unLo], ptr[unHi]); unLo++; unHi--;
      }

      FUNC0 ( unHi == unLo-1, "mainQSort3(2)" );

      if (gtHi < ltLo) {
         FUNC8(lo, hi, d+1 );
         continue;
      }

      n = FUNC4(ltLo-lo, unLo-ltLo); FUNC10(lo, unLo-n, n);
      m = FUNC4(hi-gtHi, gtHi-unHi); FUNC10(unLo, hi-m+1, m);

      n = lo + unLo - ltLo - 1;
      m = hi - (gtHi - unHi) + 1;

      nextLo[0] = lo;  nextHi[0] = n;   nextD[0] = d;
      nextLo[1] = m;   nextHi[1] = hi;  nextD[1] = d;
      nextLo[2] = n+1; nextHi[2] = m-1; nextD[2] = d+1;

      if (FUNC5(0) < FUNC5(1)) FUNC6(0,1);
      if (FUNC5(1) < FUNC5(2)) FUNC6(1,2);
      if (FUNC5(0) < FUNC5(1)) FUNC6(0,1);

      FUNC0 (FUNC5(0) >= FUNC5(1), "mainQSort3(8)" );
      FUNC0 (FUNC5(1) >= FUNC5(2), "mainQSort3(9)" );

      FUNC8 (nextLo[0], nextHi[0], nextD[0]);
      FUNC8 (nextLo[1], nextHi[1], nextD[1]);
      FUNC8 (nextLo[2], nextHi[2], nextD[2]);
   }
}