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
struct TYPE_4__ {unsigned int imagebase; TYPE_1__* ddirs; } ;
struct TYPE_3__ {scalar_t__ vaddr; unsigned int size; } ;

/* Variables and functions */
 size_t PEDIR_RELOC ; 
 unsigned int FUNC0 (void*) ; 
 unsigned int FUNC1 (void*) ; 
 TYPE_2__ ih ; 
 int FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (void*,unsigned int) ; 
 void* vaddr ; 

__attribute__((used)) static int FUNC4(void)
{
    if (ih.ddirs[PEDIR_RELOC].vaddr == 0)
        return 0;
    void *relocs = vaddr + ih.ddirs[PEDIR_RELOC].vaddr;
    void *page = vaddr + FUNC1(relocs);
    unsigned size = FUNC1(relocs + 4);
    if (size != ih.ddirs[PEDIR_RELOC].size)
        return FUNC2("only 1 page can be relocated\n");
    unsigned num =  (size - 8) / 2;
    while (num--)
    {
        unsigned pos = FUNC0(relocs + 8 + num * 2);
        if (pos == 0)
            continue;
        if ((pos & 0xF000) != 0x3000)
            return FUNC2("unknown relocation type: %x\n", pos);

        void *r = page + (pos & 0xFFF);
        FUNC3(r, FUNC1(r) - ih.imagebase + (unsigned) vaddr);
    }
    return 0;
}