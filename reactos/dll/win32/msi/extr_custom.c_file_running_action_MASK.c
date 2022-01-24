#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  RunningActions; } ;
struct TYPE_5__ {int /*<<< orphan*/  entry; int /*<<< orphan*/  name; int /*<<< orphan*/  process; int /*<<< orphan*/  handle; } ;
typedef  TYPE_1__ MSIRUNNINGACTION ;
typedef  TYPE_2__ MSIPACKAGE ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(MSIPACKAGE* package, HANDLE Handle,
                                BOOL process, LPCWSTR name)
{
    MSIRUNNINGACTION *action;

    action = FUNC1( sizeof(MSIRUNNINGACTION) );

    action->handle = Handle;
    action->process = process;
    action->name = FUNC2(name);

    FUNC0( &package->RunningActions, &action->entry );
}