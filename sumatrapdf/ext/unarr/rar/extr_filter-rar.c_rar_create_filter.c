
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int const uint32_t ;
struct RARProgramCode {int dummy; } ;
struct RARFilter {int globaldatalen; size_t blockstartpos; int blocklength; void* initialregisters; void* globaldata; struct RARProgramCode* prog; } ;


 int const RARProgramSystemGlobalSize ;
 void* calloc (int,int) ;
 int memcpy (void*,int const*,int const) ;

__attribute__((used)) static struct RARFilter *rar_create_filter(struct RARProgramCode *prog, const uint8_t *globaldata, uint32_t globaldatalen, uint32_t registers[8], size_t startpos, uint32_t length)
{
    struct RARFilter *filter;

    filter = calloc(1, sizeof(*filter));
    if (!filter)
        return ((void*)0);
    filter->prog = prog;
    filter->globaldatalen = globaldatalen > RARProgramSystemGlobalSize ? globaldatalen : RARProgramSystemGlobalSize;
    filter->globaldata = calloc(1, filter->globaldatalen);
    if (!filter->globaldata)
        return ((void*)0);
    if (globaldata)
        memcpy(filter->globaldata, globaldata, globaldatalen);
    if (registers)
        memcpy(filter->initialregisters, registers, sizeof(filter->initialregisters));
    filter->blockstartpos = startpos;
    filter->blocklength = length;

    return filter;
}
