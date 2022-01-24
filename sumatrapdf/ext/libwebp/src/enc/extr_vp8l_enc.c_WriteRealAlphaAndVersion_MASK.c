#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  error_; } ;
typedef  TYPE_1__ VP8LBitWriter ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__* const,int,int) ; 
 int VP8L_VERSION ; 
 int VP8L_VERSION_BITS ; 

__attribute__((used)) static int FUNC1(VP8LBitWriter* const bw, int has_alpha) {
  FUNC0(bw, has_alpha, 1);
  FUNC0(bw, VP8L_VERSION, VP8L_VERSION_BITS);
  return !bw->error_;
}