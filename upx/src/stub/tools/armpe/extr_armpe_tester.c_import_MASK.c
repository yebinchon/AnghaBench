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
struct TYPE_4__ {TYPE_1__* ddirs; } ;
struct TYPE_3__ {scalar_t__ vaddr; } ;

/* Variables and functions */
 size_t PEDIR_IMPORT ; 
 scalar_t__ cachesync ; 
 int FUNC0 (void*) ; 
 scalar_t__ getprocaddressa ; 
 TYPE_2__ ih ; 
 scalar_t__ loadlibraryw ; 
 int FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (void*,unsigned int) ; 
 scalar_t__ FUNC3 (void*,char*) ; 
 void* vaddr ; 

__attribute__((used)) static int FUNC4(void)
{
    if (ih.ddirs[PEDIR_IMPORT].vaddr == 0)
        return FUNC1("no imports?\n");
    FUNC1("loadlibraryw=%p,getprocaddressa=%p,cachesync=%p\n",
          loadlibraryw, getprocaddressa, cachesync);
    void *imports = vaddr + ih.ddirs[PEDIR_IMPORT].vaddr;
    while (FUNC0(imports + 12))
    {
        if (FUNC3(vaddr + FUNC0(imports + 12), "coredll.dll") == 0)
        {
            void *coredll_imports = vaddr + FUNC0(imports + 16);
            FUNC1("coredll_imports=%p\n", coredll_imports);
            void *oft =  vaddr + FUNC0(imports);
            unsigned pos = 0;
            while (FUNC0(oft + pos))
            {
                void *name = vaddr + FUNC0(oft + pos) + 2;
                FUNC1("name=%s\n", (char*) name);
                if (FUNC3(name, "loadlibraryw") == 0)
                    FUNC2(coredll_imports + pos, (unsigned) loadlibraryw);
                else if (FUNC3(name, "getprocaddressa") == 0)
                    FUNC2(coredll_imports + pos, (unsigned) getprocaddressa);
                else if (FUNC3(name, "cachesync") == 0)
                    FUNC2(coredll_imports + pos, (unsigned) cachesync);
                pos += 4;
            }
            return 0;
        }
        imports += 20;
    }

    FUNC1("coredll.dll not found");
    return 1;
}