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
struct TYPE_5__ {float** A; float** B; float** C; float** window; int /*<<< orphan*/ ** bit_reverse; } ;
typedef  TYPE_1__ vorb ;
typedef  int /*<<< orphan*/  uint16 ;

/* Variables and functions */
 int TRUE ; 
 int /*<<< orphan*/  VORBIS_outofmem ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,float*,float*,float*) ; 
 int /*<<< orphan*/  FUNC2 (int,float*) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC5(vorb *f, int b, int n)
{
   int n2 = n >> 1, n4 = n >> 2, n8 = n >> 3;
   f->A[b] = (float *) FUNC4(f, sizeof(float) * n2);
   f->B[b] = (float *) FUNC4(f, sizeof(float) * n2);
   f->C[b] = (float *) FUNC4(f, sizeof(float) * n4);
   if (!f->A[b] || !f->B[b] || !f->C[b]) return FUNC3(f, VORBIS_outofmem);
   FUNC1(n, f->A[b], f->B[b], f->C[b]);
   f->window[b] = (float *) FUNC4(f, sizeof(float) * n2);
   if (!f->window[b]) return FUNC3(f, VORBIS_outofmem);
   FUNC2(n, f->window[b]);
   f->bit_reverse[b] = (uint16 *) FUNC4(f, sizeof(uint16) * n8);
   if (!f->bit_reverse[b]) return FUNC3(f, VORBIS_outofmem);
   FUNC0(n, f->bit_reverse[b]);
   return TRUE;
}