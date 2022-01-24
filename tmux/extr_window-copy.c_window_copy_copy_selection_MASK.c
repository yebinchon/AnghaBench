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
struct window_mode_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct window_mode_entry*,char const*,char*,size_t) ; 
 char* FUNC1 (struct window_mode_entry*,size_t*) ; 

__attribute__((used)) static void
FUNC2(struct window_mode_entry *wme, const char *prefix)
{
	char	*buf;
	size_t	 len;

	buf = FUNC1(wme, &len);
	if (buf != NULL)
		FUNC0(wme, prefix, buf, len);
}