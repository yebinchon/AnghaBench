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
typedef  int uint8_t ;
struct TYPE_3__ {int first; int*** prob; int last; int* coeffs; } ;
typedef  TYPE_1__ VP8Residual ;
typedef  int /*<<< orphan*/  VP8BitWriter ;

/* Variables and functions */
 int* VP8Cat3 ; 
 int* VP8Cat4 ; 
 int* VP8Cat5 ; 
 int* VP8Cat6 ; 
 size_t* VP8EncBands ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ * const,int,int const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ * const,int const) ; 

__attribute__((used)) static int FUNC2(VP8BitWriter* const bw, int ctx, const VP8Residual* res) {
  int n = res->first;
  // should be prob[VP8EncBands[n]], but it's equivalent for n=0 or 1
  const uint8_t* p = res->prob[n][ctx];
  if (!FUNC0(bw, res->last >= 0, p[0])) {
    return 0;
  }

  while (n < 16) {
    const int c = res->coeffs[n++];
    const int sign = c < 0;
    int v = sign ? -c : c;
    if (!FUNC0(bw, v != 0, p[1])) {
      p = res->prob[VP8EncBands[n]][0];
      continue;
    }
    if (!FUNC0(bw, v > 1, p[2])) {
      p = res->prob[VP8EncBands[n]][1];
    } else {
      if (!FUNC0(bw, v > 4, p[3])) {
        if (FUNC0(bw, v != 2, p[4])) {
          FUNC0(bw, v == 4, p[5]);
        }
      } else if (!FUNC0(bw, v > 10, p[6])) {
        if (!FUNC0(bw, v > 6, p[7])) {
          FUNC0(bw, v == 6, 159);
        } else {
          FUNC0(bw, v >= 9, 165);
          FUNC0(bw, !(v & 1), 145);
        }
      } else {
        int mask;
        const uint8_t* tab;
        if (v < 3 + (8 << 1)) {          // VP8Cat3  (3b)
          FUNC0(bw, 0, p[8]);
          FUNC0(bw, 0, p[9]);
          v -= 3 + (8 << 0);
          mask = 1 << 2;
          tab = VP8Cat3;
        } else if (v < 3 + (8 << 2)) {   // VP8Cat4  (4b)
          FUNC0(bw, 0, p[8]);
          FUNC0(bw, 1, p[9]);
          v -= 3 + (8 << 1);
          mask = 1 << 3;
          tab = VP8Cat4;
        } else if (v < 3 + (8 << 3)) {   // VP8Cat5  (5b)
          FUNC0(bw, 1, p[8]);
          FUNC0(bw, 0, p[10]);
          v -= 3 + (8 << 2);
          mask = 1 << 4;
          tab = VP8Cat5;
        } else {                         // VP8Cat6 (11b)
          FUNC0(bw, 1, p[8]);
          FUNC0(bw, 1, p[10]);
          v -= 3 + (8 << 3);
          mask = 1 << 10;
          tab = VP8Cat6;
        }
        while (mask) {
          FUNC0(bw, !!(v & mask), *tab++);
          mask >>= 1;
        }
      }
      p = res->prob[VP8EncBands[n]][2];
    }
    FUNC1(bw, sign);
    if (n == 16 || !FUNC0(bw, n <= res->last, p[0])) {
      return 1;   // EOB
    }
  }
  return 1;
}