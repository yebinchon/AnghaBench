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
typedef  int u_int64_t ;
typedef  int u_int32_t ;

/* Variables and functions */
 char FUNC0 (int) ; 

__attribute__((used)) static inline char FUNC1 (u_int64_t v)
{
    u_int32_t h;
    if ((h = v >> 32))
        return 32 + FUNC0 (h);
    else
        return FUNC0 ((u_int32_t) v);
}