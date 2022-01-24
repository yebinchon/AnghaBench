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
typedef  int /*<<< orphan*/  usec_t ;

/* Variables and functions */
 scalar_t__ arg_utc ; 
 char* FUNC0 (char*,size_t,int /*<<< orphan*/ ) ; 
 char* FUNC1 (char*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *FUNC2(char *buf, size_t l, usec_t t) {

        if (arg_utc)
                return FUNC1(buf, l, t);

        return FUNC0(buf, l, t);
}