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
struct TYPE_7__ {unsigned int fDsrSensitivity; unsigned int fOutxDsrFlow; } ;
struct TYPE_6__ {scalar_t__ old_style; scalar_t__ result; } ;
typedef  TYPE_1__ TEST ;
typedef  unsigned int DWORD ;
typedef  TYPE_2__ DCB ;

/* Variables and functions */
 int /*<<< orphan*/  BaudRate ; 
 int /*<<< orphan*/  ByteSize ; 
 int /*<<< orphan*/  DCBlength ; 
 int /*<<< orphan*/  EofChar ; 
 int /*<<< orphan*/  ErrorChar ; 
 int /*<<< orphan*/  EvtChar ; 
 int /*<<< orphan*/  Parity ; 
 int /*<<< orphan*/  StopBits ; 
 int /*<<< orphan*/  XoffChar ; 
 int /*<<< orphan*/  XoffLim ; 
 int /*<<< orphan*/  XonChar ; 
 int /*<<< orphan*/  XonLim ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int,char*) ; 
 int /*<<< orphan*/  fAbortOnError ; 
 int /*<<< orphan*/  fBinary ; 
 int /*<<< orphan*/  fDsrSensitivity ; 
 int /*<<< orphan*/  fDtrControl ; 
 int /*<<< orphan*/  fDummy2 ; 
 int /*<<< orphan*/  fErrorChar ; 
 int /*<<< orphan*/  fInX ; 
 int /*<<< orphan*/  fNull ; 
 int /*<<< orphan*/  fOutX ; 
 int /*<<< orphan*/  fOutxCtsFlow ; 
 int /*<<< orphan*/  fOutxDsrFlow ; 
 int /*<<< orphan*/  fParity ; 
 int /*<<< orphan*/  fRtsControl ; 
 int /*<<< orphan*/  fTXContinueOnXoff ; 
 int /*<<< orphan*/  wReserved ; 
 int /*<<< orphan*/  wReserved1 ; 

__attribute__((used)) static void FUNC2(const char *function, const TEST *ptest, int initial_value, const DCB *pdcb1, const DCB *pdcb2)
{
	/* DCBlength is a special case since Win 9x sets it but NT does not.
	   We will accept either as correct. */
	FUNC1(DCBlength, (DWORD)sizeof(DCB), "%u");

	/* For old style control strings Win 9x does not set the next five members, NT does. */
	if(ptest->old_style && ptest->result)
	{
		FUNC1(fOutxCtsFlow, ((unsigned int)initial_value & 1), "%u");
		FUNC1(fDtrControl, ((unsigned int)initial_value & 3), "%u");
		FUNC1(fOutX, ((unsigned int)initial_value & 1), "%u");
		FUNC1(fInX, ((unsigned)initial_value & 1), "%u");
		FUNC1(fRtsControl, ((unsigned)initial_value & 3), "%u");
	}
	else
	{
		FUNC0(fOutxCtsFlow, "%u");
		FUNC0(fDtrControl, "%u");
		FUNC0(fOutX, "%u");
		FUNC0(fInX, "%u");
		FUNC0(fRtsControl, "%u");
	}

	if(ptest->result)
	{
		/* For the idsr=xxx parameter, NT sets fDsrSensitivity, 9x sets
		   fOutxDsrFlow. */
		if(!ptest->old_style)
		{
			FUNC1(fOutxDsrFlow, pdcb2->fDsrSensitivity, "%u");
			FUNC1(fDsrSensitivity, pdcb2->fOutxDsrFlow, "%u");
		}
		else
		{
			/* For old style control strings Win 9x does not set the
			   fOutxDsrFlow member, NT does. */
			FUNC1(fOutxDsrFlow, ((unsigned int)initial_value & 1), "%u");
			FUNC0(fDsrSensitivity, "%u");
		}
	}
	else
	{
		FUNC0(fOutxDsrFlow, "%u");
		FUNC0(fDsrSensitivity, "%u");
	}

	/* Check the result of the DCB members. */
	FUNC0(BaudRate, "%u");
	FUNC0(fBinary, "%u");
	FUNC0(fParity, "%u");
	FUNC0(fTXContinueOnXoff, "%u");
	FUNC0(fErrorChar, "%u");
	FUNC0(fNull, "%u");
	FUNC0(fAbortOnError, "%u");
	FUNC0(fDummy2, "%u");
	FUNC0(wReserved, "%u");
	FUNC0(XonLim, "%u");
	FUNC0(XoffLim, "%u");
	FUNC0(ByteSize, "%u");
	FUNC0(Parity, "%u");
	FUNC0(StopBits, "%u");
	FUNC0(XonChar, "%d");
	FUNC0(XoffChar, "%d");
	FUNC0(ErrorChar, "%d");
	FUNC0(EofChar, "%d");
	FUNC0(EvtChar, "%d");
	FUNC0(wReserved1, "%u");
}