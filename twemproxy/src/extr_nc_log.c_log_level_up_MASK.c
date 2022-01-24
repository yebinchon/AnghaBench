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
struct logger {scalar_t__ level; } ;

/* Variables and functions */
 scalar_t__ LOG_PVERB ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 struct logger logger ; 

void
FUNC1(void)
{
    struct logger *l = &logger;

    if (l->level < LOG_PVERB) {
        l->level++;
        FUNC0("up log level to %d", l->level);
    }
}