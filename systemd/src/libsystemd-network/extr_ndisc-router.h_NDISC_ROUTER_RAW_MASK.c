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
typedef  void uint8_t ;
typedef  int /*<<< orphan*/  sd_ndisc_router ;

/* Variables and functions */
 int FUNC0 (int) ; 

__attribute__((used)) static inline void* FUNC1(const sd_ndisc_router *rt) {
        return (uint8_t*) rt + FUNC0(sizeof(sd_ndisc_router));
}