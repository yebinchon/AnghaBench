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
typedef  void* uint8_t ;
struct write_block {int dummy; } ;

/* Variables and functions */
 void* TYPE_USERDATA ; 
 int /*<<< orphan*/  FUNC0 (struct write_block*,void**,int) ; 

__attribute__((used)) static inline void
FUNC1(struct write_block *wb, void *v) {
	uint8_t n = TYPE_USERDATA;
	FUNC0(wb, &n, 1);
	FUNC0(wb, &v, sizeof(v));
}