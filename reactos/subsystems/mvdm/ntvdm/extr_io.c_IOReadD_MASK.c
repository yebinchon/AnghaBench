#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t USHORT ;
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_3__ {int /*<<< orphan*/  (* InD ) (size_t) ;} ;
struct TYPE_4__ {scalar_t__ hVdd; TYPE_1__ IoHandlers; } ;

/* Variables and functions */
 scalar_t__ INVALID_HANDLE_VALUE ; 
 size_t FUNC0 (size_t) ; 
 TYPE_2__* IoPortProc ; 
 int /*<<< orphan*/  FUNC1 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 

ULONG
FUNC3(USHORT Port)
{
    if (IoPortProc[Port].hVdd == INVALID_HANDLE_VALUE &&
        IoPortProc[Port].IoHandlers.InD)
    {
        return IoPortProc[Port].IoHandlers.InD(Port);
    }
    else
    {
        USHORT Low, High;

        // FIXME: Is it ok on Little endian and Big endian ??
        Low  = FUNC0(Port);
        High = FUNC0(Port + sizeof(USHORT));
        return FUNC1(Low, High);
    }
}