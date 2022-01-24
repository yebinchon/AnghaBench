#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int X; int Y; } ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  TYPE_1__ COORD ;

/* Variables and functions */
 scalar_t__ ERROR_INVALID_HANDLE ; 
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__) ; 

__attribute__((used)) static void FUNC4(HANDLE hCon, COORD sbSize)
{
    COORD		c;

    c.X = c.Y = 0;
    FUNC2(FUNC1(0, c) == 0, "No handle\n");
    FUNC2(FUNC0() == ERROR_INVALID_HANDLE, "GetLastError: expecting %u got %u\n",
       ERROR_INVALID_HANDLE, FUNC0());

    c.X = c.Y = 0;
    FUNC2(FUNC1(hCon, c) != 0, "Cursor in upper-left\n");
    FUNC3(hCon, c);

    c.X = sbSize.X - 1;
    c.Y = sbSize.Y - 1;
    FUNC2(FUNC1(hCon, c) != 0, "Cursor in lower-right\n");
    FUNC3(hCon, c);

    c.X = sbSize.X;
    c.Y = sbSize.Y - 1;
    FUNC2(FUNC1(hCon, c) == 0, "Cursor is outside\n");
    FUNC2(FUNC0() == ERROR_INVALID_PARAMETER, "GetLastError: expecting %u got %u\n",
       ERROR_INVALID_PARAMETER, FUNC0());

    c.X = sbSize.X - 1;
    c.Y = sbSize.Y;
    FUNC2(FUNC1(hCon, c) == 0, "Cursor is outside\n");
    FUNC2(FUNC0() == ERROR_INVALID_PARAMETER, "GetLastError: expecting %u got %u\n",
       ERROR_INVALID_PARAMETER, FUNC0());

    c.X = -1;
    c.Y = 0;
    FUNC2(FUNC1(hCon, c) == 0, "Cursor is outside\n");
    FUNC2(FUNC0() == ERROR_INVALID_PARAMETER, "GetLastError: expecting %u got %u\n",
       ERROR_INVALID_PARAMETER, FUNC0());

    c.X = 0;
    c.Y = -1;
    FUNC2(FUNC1(hCon, c) == 0, "Cursor is outside\n");
    FUNC2(FUNC0() == ERROR_INVALID_PARAMETER, "GetLastError: expecting %u got %u\n",
       ERROR_INVALID_PARAMETER, FUNC0());
}