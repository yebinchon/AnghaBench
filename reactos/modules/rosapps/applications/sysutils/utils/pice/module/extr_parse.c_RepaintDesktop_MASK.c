#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ cy; } ;
struct TYPE_6__ {int Count; int /*<<< orphan*/ * Value; } ;
typedef  TYPE_1__ ARGS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 size_t OUTPUT_WINDOW ; 
 int /*<<< orphan*/  OldOffset ; 
 int /*<<< orphan*/  OldSelector ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (size_t,char*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 scalar_t__ ulLastDisassEndAddress ; 
 scalar_t__ ulLastDisassStartAddress ; 
 TYPE_2__* wWindow ; 

void FUNC11(void)
{
    ARGS Args;

    FUNC2();

    FUNC7();

    FUNC1();

    // display data window
	Args.Value[0]=OldSelector;
	Args.Value[1]=OldOffset;
	Args.Count=2;
	FUNC0(&Args);

    // disassembly from current address
    FUNC4(&Args,0,sizeof(ARGS));
    // make unassembler refresh all again
    ulLastDisassStartAddress=ulLastDisassEndAddress=0;
	Args.Count=0;
	FUNC10(&Args);

    FUNC6(wWindow[OUTPUT_WINDOW].cy-1);
    FUNC5(OUTPUT_WINDOW,"");

    FUNC9();
    FUNC8();

    FUNC3();
}