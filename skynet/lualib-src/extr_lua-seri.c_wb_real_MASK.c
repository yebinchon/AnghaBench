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
typedef  int /*<<< orphan*/  v ;
typedef  double uint8_t ;
struct write_block {int dummy; } ;

/* Variables and functions */
 double FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TYPE_NUMBER ; 
 int /*<<< orphan*/  TYPE_NUMBER_REAL ; 
 int /*<<< orphan*/  FUNC1 (struct write_block*,double*,int) ; 

__attribute__((used)) static inline void
FUNC2(struct write_block *wb, double v) {
	uint8_t n = FUNC0(TYPE_NUMBER , TYPE_NUMBER_REAL);
	FUNC1(wb, &n, 1);
	FUNC1(wb, &v, sizeof(v));
}