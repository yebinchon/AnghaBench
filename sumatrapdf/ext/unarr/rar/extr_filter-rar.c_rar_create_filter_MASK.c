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
typedef  int uint8_t ;
typedef  int const uint32_t ;
struct RARProgramCode {int dummy; } ;
struct RARFilter {int globaldatalen; size_t blockstartpos; int blocklength; void* initialregisters; void* globaldata; struct RARProgramCode* prog; } ;

/* Variables and functions */
 int const RARProgramSystemGlobalSize ; 
 void* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (void*,int const*,int const) ; 

__attribute__((used)) static struct RARFilter *FUNC2(struct RARProgramCode *prog, const uint8_t *globaldata, uint32_t globaldatalen, uint32_t registers[8], size_t startpos, uint32_t length)
{
    struct RARFilter *filter;

    filter = FUNC0(1, sizeof(*filter));
    if (!filter)
        return NULL;
    filter->prog = prog;
    filter->globaldatalen = globaldatalen > RARProgramSystemGlobalSize ? globaldatalen : RARProgramSystemGlobalSize;
    filter->globaldata = FUNC0(1, filter->globaldatalen);
    if (!filter->globaldata)
        return NULL;
    if (globaldata)
        FUNC1(filter->globaldata, globaldata, globaldatalen);
    if (registers)
        FUNC1(filter->initialregisters, registers, sizeof(filter->initialregisters));
    filter->blockstartpos = startpos;
    filter->blocklength = length;

    return filter;
}