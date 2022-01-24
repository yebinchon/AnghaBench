#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  proba_t ;
struct TYPE_3__ {int first; int last; int* coeffs; int /*<<< orphan*/ *** stats; } ;
typedef  TYPE_1__ VP8Residual ;

/* Variables and functions */
 int MAX_VARIABLE_LEVEL ; 
 size_t* VP8EncBands ; 
 void*** VP8LevelCodes ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *) ; 
 int FUNC1 (int) ; 

int FUNC2(int ctx, const VP8Residual* const res) {
  int n = res->first;
  // should be stats[VP8EncBands[n]], but it's equivalent for n=0 or 1
  proba_t* s = res->stats[n][ctx];
  if (res->last  < 0) {
    FUNC0(0, s + 0);
    return 0;
  }
  while (n <= res->last) {
    int v;
    FUNC0(1, s + 0);  // order of record doesn't matter
    while ((v = res->coeffs[n++]) == 0) {
      FUNC0(0, s + 1);
      s = res->stats[VP8EncBands[n]][0];
    }
    FUNC0(1, s + 1);
    if (!FUNC0(2u < (unsigned int)(v + 1), s + 2)) {  // v = -1 or 1
      s = res->stats[VP8EncBands[n]][1];
    } else {
      v = FUNC1(v);
#if !defined(USE_LEVEL_CODE_TABLE)
      if (!FUNC0(v > 4, s + 3)) {
        if (FUNC0(v != 2, s + 4))
          FUNC0(v == 4, s + 5);
      } else if (!FUNC0(v > 10, s + 6)) {
        FUNC0(v > 6, s + 7);
      } else if (!FUNC0((v >= 3 + (8 << 2)), s + 8)) {
        FUNC0((v >= 3 + (8 << 1)), s + 9);
      } else {
        FUNC0((v >= 3 + (8 << 3)), s + 10);
      }
#else
      if (v > MAX_VARIABLE_LEVEL) {
        v = MAX_VARIABLE_LEVEL;
      }

      {
        const int bits = VP8LevelCodes[v - 1][1];
        int pattern = VP8LevelCodes[v - 1][0];
        int i;
        for (i = 0; (pattern >>= 1) != 0; ++i) {
          const int mask = 2 << i;
          if (pattern & 1) VP8RecordStats(!!(bits & mask), s + 3 + i);
        }
      }
#endif
      s = res->stats[VP8EncBands[n]][2];
    }
  }
  if (n < 16) FUNC0(0, s + 0);
  return 1;
}