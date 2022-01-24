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
typedef  int /*<<< orphan*/  HGDIOBJ ;
typedef  scalar_t__ HDC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

VOID
FUNC2(
    HGDIOBJ hobj,
    HDC hdc)
{
    HDC hdcLink;

    /* Remove the HDC link for the object */
    hdcLink = FUNC1(hobj);
    FUNC0(hdcLink == hdc);
}