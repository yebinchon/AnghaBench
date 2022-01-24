#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  void* ULONG ;
struct TYPE_3__ {int Length; char* Next; char Version; char* AugString; int AugStringLength; char* AugData; char* Instructions; int /*<<< orphan*/  AugLength; int /*<<< orphan*/  ReturnAddressRegister; int /*<<< orphan*/  DataAlign; int /*<<< orphan*/  CodeAlign; void* CieId; } ;
typedef  TYPE_1__* PDW2CIE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (char*) ; 

unsigned long
FUNC3(PDW2CIE Cie, char *pc)
{
    Cie->Length = *(ULONG*)pc;
    Cie->Next = pc + 4 + Cie->Length;
    Cie->CieId = *(ULONG*)(pc + 4);
    Cie->Version = pc[8];
    Cie->AugString = pc + 9;
    Cie->AugStringLength = FUNC2(Cie->AugString);
    pc = Cie->AugString + Cie->AugStringLength + 1;
    pc += FUNC1(&Cie->CodeAlign, pc);
    pc += FUNC0(&Cie->DataAlign, pc);
    pc += FUNC1(&Cie->ReturnAddressRegister, pc);
    pc += FUNC1(&Cie->AugLength, pc);
    Cie->AugData = pc;
    pc += Cie->AugLength;
    Cie->Instructions = pc;

    return Cie->Length + 4;
}