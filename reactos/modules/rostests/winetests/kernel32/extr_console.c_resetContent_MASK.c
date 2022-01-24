#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WORD ;
struct TYPE_6__ {scalar_t__ X; scalar_t__ Y; } ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  TYPE_1__ COORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 char FUNC0 (TYPE_1__) ; 
 int /*<<< orphan*/  DEFAULT_ATTRIB ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,TYPE_1__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,TYPE_1__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(HANDLE hCon, COORD sbSize, BOOL content)
{
    COORD       c;
    WORD        attr = DEFAULT_ATTRIB;
    char        ch;
    DWORD       len;

    for (c.X = 0; c.X < sbSize.X; c.X++)
    {
        for (c.Y = 0; c.Y < sbSize.Y; c.Y++)
        {
            ch = (content) ? FUNC0(c) : ' ';
            FUNC1(hCon, &attr, 1, c, &len);
            FUNC2(hCon, &ch, 1, c, &len);
        }
    }
}