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
 int /*<<< orphan*/  COLOR_HILITE ; 
 scalar_t__ CurrentCS ; 
 scalar_t__ CurrentDS ; 
 scalar_t__ CurrentEAX ; 
 scalar_t__ CurrentEBP ; 
 scalar_t__ CurrentEBX ; 
 scalar_t__ CurrentECX ; 
 scalar_t__ CurrentEDI ; 
 scalar_t__ CurrentEDX ; 
 scalar_t__ CurrentEFL ; 
 scalar_t__ CurrentEIP ; 
 scalar_t__ CurrentES ; 
 scalar_t__ CurrentESI ; 
 scalar_t__ CurrentESP ; 
 scalar_t__ CurrentFS ; 
 scalar_t__ CurrentGS ; 
 scalar_t__ CurrentSS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ OldCS ; 
 scalar_t__ OldDS ; 
 scalar_t__ OldEAX ; 
 scalar_t__ OldEBP ; 
 scalar_t__ OldEBX ; 
 scalar_t__ OldECX ; 
 scalar_t__ OldEDI ; 
 scalar_t__ OldEDX ; 
 scalar_t__ OldEFL ; 
 scalar_t__ OldEIP ; 
 scalar_t__ OldES ; 
 scalar_t__ OldESI ; 
 scalar_t__ OldESP ; 
 scalar_t__ OldFS ; 
 scalar_t__ OldGS ; 
 scalar_t__ OldSS ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  REGISTER_WINDOW ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  WHITE ; 

void FUNC8(void)
{
    char tempDisplayRegs[48];

    FUNC0();

//	Clear(REGISTER_WINDOW);
	FUNC1(REGISTER_WINDOW);
	// EAX
    FUNC4(REGISTER_WINDOW,"EAX=");
	FUNC3(tempDisplayRegs,"%.8X",CurrentEAX);
	if(OldEAX!=CurrentEAX)
	{
		FUNC6(WHITE);
	}
	FUNC4(REGISTER_WINDOW,tempDisplayRegs);
	if(OldEAX!=CurrentEAX)
	{
        FUNC5();
	}

	// EBX
    FUNC4(REGISTER_WINDOW," EBX=");
	FUNC3(tempDisplayRegs,"%.8X",CurrentEBX);
	if(OldEBX!=CurrentEBX)
	{
		FUNC6(WHITE);
	}
	FUNC4(REGISTER_WINDOW,tempDisplayRegs);
	if(OldEBX!=CurrentEBX)
	{
        FUNC5();
	}

	// ECX
    FUNC4(REGISTER_WINDOW," ECX=");
	FUNC3(tempDisplayRegs,"%.8X",CurrentECX);
	if(OldECX!=CurrentECX)
	{
		FUNC6(WHITE);
	}
	FUNC4(REGISTER_WINDOW,tempDisplayRegs);
	if(OldECX!=CurrentECX)
	{
        FUNC5();
	}

	// EDX
    FUNC4(REGISTER_WINDOW," EDX=");
	FUNC3(tempDisplayRegs,"%.8X",CurrentEDX);
	if(OldEDX!=CurrentEDX)
	{
		FUNC6(COLOR_HILITE);
	}
	FUNC4(REGISTER_WINDOW,tempDisplayRegs);
	if(OldEDX!=CurrentEDX)
	{
		FUNC5();
	}

	// ESI
    FUNC4(REGISTER_WINDOW," ESI=");
	FUNC3(tempDisplayRegs,"%.8X",CurrentESI);
	if(OldESI!=CurrentESI)
	{
		FUNC6(COLOR_HILITE);
	}
	FUNC4(REGISTER_WINDOW,tempDisplayRegs);
	if(OldESI!=CurrentESI)
	{
		FUNC5();
	}

	// EDI
    FUNC4(REGISTER_WINDOW," EDI=");
	FUNC3(tempDisplayRegs,"%.8X\n",CurrentEDI);
	if(OldEDI!=CurrentEDI)
	{
		FUNC6(COLOR_HILITE);
	}
	FUNC4(REGISTER_WINDOW,tempDisplayRegs);
	if(OldEDI!=CurrentEDI)
	{
		FUNC5();
	}

	// EBP
    FUNC4(REGISTER_WINDOW,"EBP=");
	FUNC3(tempDisplayRegs,"%.8X",CurrentEBP);
	if(OldEBP!=CurrentEBP)
	{
		FUNC6(COLOR_HILITE);
	}
	FUNC4(REGISTER_WINDOW,tempDisplayRegs);
	if(OldEBP!=CurrentEBP)
	{
		FUNC5();
	}

	// ESP
    FUNC4(REGISTER_WINDOW," ESP=");
	FUNC3(tempDisplayRegs,"%.8X",CurrentESP);
	if(OldESP!=CurrentESP)
	{
		FUNC6(COLOR_HILITE);
	}
	FUNC4(REGISTER_WINDOW,tempDisplayRegs);
	if(OldESP!=CurrentESP)
	{
		FUNC5();
	}

	// EIP
    FUNC4(REGISTER_WINDOW," EIP=");
	FUNC3(tempDisplayRegs,"%.8X",CurrentEIP);
	if(OldEIP!=CurrentEIP)
	{
		FUNC6(COLOR_HILITE);
	}
	FUNC4(REGISTER_WINDOW,tempDisplayRegs);
	if(OldEIP!=CurrentEIP)
	{
		FUNC5();
	}

	// EFL
    FUNC4(REGISTER_WINDOW," EFLAGS=");
	FUNC3(tempDisplayRegs,"%.8X",CurrentEFL);
	if(OldEFL!=CurrentEFL)
	{
		FUNC6(COLOR_HILITE);
	}
	FUNC4(REGISTER_WINDOW,tempDisplayRegs);
	if(OldEFL!=CurrentEFL)
	{
		FUNC5();
	}

	// visual flags
	FUNC3(tempDisplayRegs," %s\n",FUNC7(CurrentEFL));
	FUNC4(REGISTER_WINDOW,tempDisplayRegs);

	// CS
    FUNC4(REGISTER_WINDOW,"CS=");
	FUNC3(tempDisplayRegs,"%.4X",CurrentCS);
	if(OldCS!=CurrentCS)
	{
		FUNC6(COLOR_HILITE);
	}
	FUNC4(REGISTER_WINDOW,tempDisplayRegs);
	if(OldCS!=CurrentCS)
	{
		FUNC5();
	}

	// DS
    FUNC4(REGISTER_WINDOW,"  DS=");
	FUNC3(tempDisplayRegs,"%.4X",CurrentDS);
	if(OldDS!=CurrentDS)
	{
		FUNC6(COLOR_HILITE);
	}
	FUNC4(REGISTER_WINDOW,tempDisplayRegs);
	if(OldDS!=CurrentDS)
	{
		FUNC5();
	}

	// ES
    FUNC4(REGISTER_WINDOW,"  ES=");
	FUNC3(tempDisplayRegs,"%.4X",CurrentES);
	if(OldES!=CurrentES)
	{
		FUNC6(COLOR_HILITE);
	}
	FUNC4(REGISTER_WINDOW,tempDisplayRegs);
	if(OldES!=CurrentES)
	{
		FUNC5();
	}

	// FS
    FUNC4(REGISTER_WINDOW,"  FS=");
	FUNC3(tempDisplayRegs,"%.4X",CurrentFS);
	if(OldFS!=CurrentFS)
	{
		FUNC6(COLOR_HILITE);
	}
	FUNC4(REGISTER_WINDOW,tempDisplayRegs);
	if(OldFS!=CurrentFS)
	{
		FUNC5();
	}

	// GS
    FUNC4(REGISTER_WINDOW,"  GS=");
	FUNC3(tempDisplayRegs,"%.4X",CurrentGS);
	if(OldGS!=CurrentGS)
	{
		FUNC5();
	}
	FUNC4(REGISTER_WINDOW,tempDisplayRegs);
	if(OldGS!=CurrentGS)
	{
		FUNC5();
	}

	// SS
    FUNC4(REGISTER_WINDOW,"  SS=");
	FUNC3(tempDisplayRegs,"%.4X",CurrentSS);
	if(OldSS!=CurrentSS)
	{
		FUNC6(COLOR_HILITE);
	}
	FUNC4(REGISTER_WINDOW,tempDisplayRegs);
	if(OldSS!=CurrentSS)
	{
		FUNC5();
	}

    FUNC2();
}