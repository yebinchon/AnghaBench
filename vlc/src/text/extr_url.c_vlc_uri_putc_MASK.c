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
struct vlc_memstream {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct vlc_memstream*,char*,unsigned char) ; 
 int /*<<< orphan*/  FUNC4 (struct vlc_memstream*,int) ; 

__attribute__((used)) static void FUNC5(struct vlc_memstream *s, int c, const char *extras)
{
    if (FUNC0(c) || FUNC1(c) || (FUNC2(extras, c) != NULL))
        FUNC4(s, c);
    else
        FUNC3(s, "%%%02hhX", (unsigned char)c);
}