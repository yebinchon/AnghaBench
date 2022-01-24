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
struct sltg_typelib {int dummy; } ;
typedef  int /*<<< orphan*/  dummy ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int) ; 

__attribute__((used)) static void FUNC2(struct sltg_typelib *typelib)
{
    static const char dummy[6];

    FUNC0("sltg_write_helpstrings: writing dummy 6 bytes\n");

    FUNC1(dummy, sizeof(dummy));
}