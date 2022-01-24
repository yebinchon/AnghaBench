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
 int /*<<< orphan*/  FUNC0 (char) ; 

void FUNC1(char *cur_string)
{
    int symbol=0;

    if(cur_string[0]=='.')
        while(cur_string[symbol]!=' ')
            symbol++;

    for(;cur_string[symbol]!='\n'; symbol++)
        FUNC0(cur_string[symbol]);

    FUNC0(' ');
}