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
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static BOOL FUNC1(void)
{
    switch (FUNC0())
    {
    case 936:   // Chinese PRC
    case 932:   // Japanese
    case 949:   // Korean
    case 1361:  // Korean (Johab)
    case 950:   // Taiwan
        return TRUE;
    }
    return FALSE;
}