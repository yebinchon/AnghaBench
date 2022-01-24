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
typedef  int /*<<< orphan*/  VOID ;
typedef  size_t USHORT ;
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_3__ {int /*<<< orphan*/  (* OutD ) (size_t,int /*<<< orphan*/ ) ;} ;
struct TYPE_4__ {scalar_t__ hVdd; TYPE_1__ IoHandlers; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 TYPE_2__* IoPortProc ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (size_t,int /*<<< orphan*/ ) ; 

VOID
FUNC4(USHORT Port,
         ULONG  Buffer)
{
    if (IoPortProc[Port].hVdd == INVALID_HANDLE_VALUE &&
        IoPortProc[Port].IoHandlers.OutD)
    {
        IoPortProc[Port].IoHandlers.OutD(Port, Buffer);
    }
    else
    {
        // FIXME: Is it ok on Little endian and Big endian ??
        FUNC1(Port, FUNC2(Buffer));
        FUNC1(Port + sizeof(USHORT), FUNC0(Buffer));
    }
}