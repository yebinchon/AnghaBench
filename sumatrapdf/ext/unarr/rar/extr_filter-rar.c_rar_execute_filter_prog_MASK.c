#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
struct RARFilter {scalar_t__ globaldatalen; int /*<<< orphan*/ * globaldata; TYPE_1__* prog; int /*<<< orphan*/  initialregisters; } ;
struct TYPE_8__ {int /*<<< orphan*/ * memory; } ;
struct TYPE_7__ {scalar_t__ staticdatalen; int /*<<< orphan*/  prog; int /*<<< orphan*/ * staticdata; } ;
typedef  TYPE_2__ RARVirtualMachine ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 size_t RARProgramSystemGlobalAddress ; 
 scalar_t__ RARProgramSystemGlobalSize ; 
 size_t RARProgramUserGlobalAddress ; 
 scalar_t__ RARProgramUserGlobalSize ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_2__*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static bool FUNC7(struct RARFilter *filter, RARVirtualMachine *vm)
{
    uint32_t newgloballength;
    uint32_t globallength = filter->globaldatalen;
    if (globallength > RARProgramSystemGlobalSize)
        globallength = RARProgramSystemGlobalSize;
    FUNC5(&vm->memory[RARProgramSystemGlobalAddress], filter->globaldata, globallength);
    if (filter->prog->staticdata) {
        uint32_t staticlength = filter->prog->staticdatalen;
        if (staticlength > RARProgramUserGlobalSize - globallength)
            staticlength = RARProgramUserGlobalSize - globallength;
        FUNC5(&vm->memory[RARProgramUserGlobalAddress], filter->prog->staticdata, staticlength);
    }
    FUNC1(vm, filter->initialregisters);

    if (!FUNC0(vm, filter->prog->prog)) {
        FUNC6("Error while executing program in RAR VM");
        return false;
    }

    newgloballength = FUNC2(vm, RARProgramSystemGlobalAddress + 0x30);
    if (newgloballength > RARProgramUserGlobalSize)
        newgloballength = RARProgramUserGlobalSize;
    if (newgloballength > 0) {
        uint32_t newglobaldatalength = RARProgramSystemGlobalSize + newgloballength;
        if (newglobaldatalength > filter->globaldatalen) {
            uint8_t *newglobaldata = FUNC4(newglobaldatalength);
            if (!newglobaldata)
                return false;
            FUNC3(filter->globaldata);
            filter->globaldata = newglobaldata;
        }
        filter->globaldatalen = newglobaldatalength;
        FUNC5(filter->globaldata, &vm->memory[RARProgramSystemGlobalAddress], filter->globaldatalen);
    }
    else
        filter->globaldatalen = 0;

    return true;
}