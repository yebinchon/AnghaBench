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
typedef  int /*<<< orphan*/  VOID ;
typedef  scalar_t__ PRTL_SPLAY_LINKS ;
typedef  scalar_t__ BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 

__attribute__((used)) static
VOID
FUNC5(PRTL_SPLAY_LINKS Links, BOOLEAN Root, BOOLEAN LeftChild)
{
    if (FUNC2(Links))
    {
        FUNC0(Links, FUNC2(Links));
    }

    if (FUNC4(Links))
    {
        FUNC1(Links, FUNC4(Links));
    }

    if (!Root)
    {
        if (LeftChild)
        {
            FUNC0(FUNC3(Links), Links);
        }
        else
        {
            FUNC1(FUNC3(Links), Links);
        }
    }
}