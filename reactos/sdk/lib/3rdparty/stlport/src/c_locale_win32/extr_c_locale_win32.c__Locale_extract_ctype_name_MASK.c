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
typedef  int /*<<< orphan*/  _Locale_lcid_t ;

/* Variables and functions */
 char const* FUNC0 (char const*,char*,char*,int /*<<< orphan*/ *,int*) ; 

char const* FUNC1(const char* cname, char* buf,
                                       _Locale_lcid_t* hint, int *__err_code)
{ return FUNC0(cname, "LC_CTYPE", buf, hint, __err_code); }