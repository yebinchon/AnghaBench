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
 int EOF ; 
 size_t FUNC0 (char const*) ; 
 size_t FUNC1 (struct vlc_memstream*,char const*,size_t) ; 

int (FUNC2)(struct vlc_memstream *ms, const char *str)
{
    size_t len = FUNC0(str);
    return (FUNC1(ms, str, len) == len) ? 0 : EOF;
}