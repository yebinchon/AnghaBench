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
 char* haystack ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int,int) ; 

int FUNC1(void)
{
    FUNC0( haystack, "Lorem", 0, true );
    FUNC0( haystack, "Sea Otters", 0, false );
    FUNC0( haystack, "", 0, true );
    FUNC0( haystack, "Lorem ipsum dolor sit amet, but bigger", 0, false );
    FUNC0( haystack, haystack, 0, true );
    FUNC0( haystack, "amet", 0, true );
    FUNC0( haystack, "dolor", 5, false );
}