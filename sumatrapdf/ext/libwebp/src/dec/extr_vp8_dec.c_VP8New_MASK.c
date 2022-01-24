#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ num_parts_minus_one_; scalar_t__ ready_; int /*<<< orphan*/  worker_; } ;
typedef  TYPE_1__ VP8Decoder ;
struct TYPE_6__ {int /*<<< orphan*/  (* Init ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__* const) ; 
 TYPE_2__* FUNC2 () ; 
 scalar_t__ FUNC3 (unsigned long long,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

VP8Decoder* FUNC5(void) {
  VP8Decoder* const dec = (VP8Decoder*)FUNC3(1ULL, sizeof(*dec));
  if (dec != NULL) {
    FUNC1(dec);
    FUNC2()->Init(&dec->worker_);
    dec->ready_ = 0;
    dec->num_parts_minus_one_ = 0;
    FUNC0();
  }
  return dec;
}