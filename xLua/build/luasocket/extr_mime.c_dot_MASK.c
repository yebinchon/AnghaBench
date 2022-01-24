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
typedef  int /*<<< orphan*/  luaL_Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char) ; 

__attribute__((used)) static size_t FUNC1(int c, size_t state, luaL_Buffer *buffer)
{
    FUNC0(buffer, (char) c);
    switch (c) {
        case '\r': 
            return 1;
        case '\n': 
            return (state == 1)? 2: 0; 
        case '.':  
            if (state == 2) 
                FUNC0(buffer, '.');
        default:
            return 0;
    }
}