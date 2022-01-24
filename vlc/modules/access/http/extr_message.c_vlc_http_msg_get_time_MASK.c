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
typedef  int time_t ;
struct vlc_http_msg {int dummy; } ;

/* Variables and functions */
 int FUNC0 (char const*) ; 
 char* FUNC1 (struct vlc_http_msg const*,char const*) ; 

time_t FUNC2(const struct vlc_http_msg *m, const char *name)
{
    const char *str = FUNC1(m, name);
    if (str == NULL)
        return -1;
    return FUNC0(str);
}