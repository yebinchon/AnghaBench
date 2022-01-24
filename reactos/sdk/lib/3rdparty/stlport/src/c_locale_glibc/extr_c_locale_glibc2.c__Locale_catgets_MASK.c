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
struct _Locale_messages {int dummy; } ;
typedef  int /*<<< orphan*/  nl_catd_type ;

/* Variables and functions */
 char const* FUNC0 (int /*<<< orphan*/ ,int,int,char const*) ; 

const char *FUNC1(struct _Locale_messages *__loc, nl_catd_type __cat,
                            int __setid, int __msgid, const char *dfault)
{
  return FUNC0( __cat, __setid, __msgid, dfault );
}