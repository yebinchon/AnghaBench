#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vorb ;
struct TYPE_5__ {int dimensions; } ;
typedef  TYPE_1__ Codebook ;

/* Variables and functions */
 int FALSE ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,float*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,float*,int,int) ; 

__attribute__((used)) static int FUNC2(vorb *f, Codebook *book, float *target, int offset, int n, int rtype)
{
   int k;
   if (rtype == 0) {
      int step = n / book->dimensions;
      for (k=0; k < step; ++k)
         if (!FUNC1(f, book, target+offset+k, n-offset-k, step))
            return FALSE;
   } else {
      for (k=0; k < n; ) {
         if (!FUNC0(f, book, target+offset, n-k))
            return FALSE;
         k += book->dimensions;
         offset += book->dimensions;
      }
   }
   return TRUE;
}