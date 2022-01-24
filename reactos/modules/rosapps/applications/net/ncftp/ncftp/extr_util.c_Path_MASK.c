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

/* Variables and functions */
 char const* const LOCAL_PATH_DELIM_STR ; 
 char* FUNC0 (char* const,char const* const,size_t const) ; 
 int /*<<< orphan*/  FUNC1 (char* const,char const* const,size_t const) ; 

char *
FUNC2(char *const dst, const size_t siz, const char *const parent, const char *const fname)
{
	(void) FUNC1(dst, parent, siz);
	(void) FUNC0(dst, LOCAL_PATH_DELIM_STR, siz);
	return (FUNC0(dst, fname, siz));
}