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
struct TYPE_3__ {int* nz_; int* top_nz_; int* left_nz_; } ;
typedef  TYPE_1__ VP8EncIterator ;

/* Variables and functions */
 int FUNC0 (int const,int) ; 

void FUNC1(VP8EncIterator* const it) {
  const int tnz = it->nz_[0], lnz = it->nz_[-1];
  int* const top_nz = it->top_nz_;
  int* const left_nz = it->left_nz_;

  // Top-Y
  top_nz[0] = FUNC0(tnz, 12);
  top_nz[1] = FUNC0(tnz, 13);
  top_nz[2] = FUNC0(tnz, 14);
  top_nz[3] = FUNC0(tnz, 15);
  // Top-U
  top_nz[4] = FUNC0(tnz, 18);
  top_nz[5] = FUNC0(tnz, 19);
  // Top-V
  top_nz[6] = FUNC0(tnz, 22);
  top_nz[7] = FUNC0(tnz, 23);
  // DC
  top_nz[8] = FUNC0(tnz, 24);

  // left-Y
  left_nz[0] = FUNC0(lnz,  3);
  left_nz[1] = FUNC0(lnz,  7);
  left_nz[2] = FUNC0(lnz, 11);
  left_nz[3] = FUNC0(lnz, 15);
  // left-U
  left_nz[4] = FUNC0(lnz, 17);
  left_nz[5] = FUNC0(lnz, 19);
  // left-V
  left_nz[6] = FUNC0(lnz, 21);
  left_nz[7] = FUNC0(lnz, 23);
  // left-DC is special, iterated separately
}