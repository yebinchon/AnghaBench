#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int cParams; } ;
struct TYPE_6__ {void* Name; void* HelpString; void* Entry; TYPE_4__ funcdesc; TYPE_1__* pParamDesc; } ;
struct TYPE_5__ {void* Name; } ;
typedef  TYPE_2__ TLBFuncDesc ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 

__attribute__((used)) static void FUNC5(const TLBFuncDesc * pfd)
{
  int i;
  FUNC1("%s(%u)\n", FUNC3(FUNC2(pfd->Name)), pfd->funcdesc.cParams);
  for (i=0;i<pfd->funcdesc.cParams;i++)
      FUNC1("\tparm%d: %s\n",i,FUNC3(FUNC2(pfd->pParamDesc[i].Name)));


  FUNC4(&(pfd->funcdesc));

  FUNC1("\thelpstring: %s\n", FUNC3(FUNC2(pfd->HelpString)));
  if(pfd->Entry == NULL)
      FUNC1("\tentry: (null)\n");
  else if(pfd->Entry == (void*)-1)
      FUNC1("\tentry: invalid\n");
  else if(FUNC0(pfd->Entry))
      FUNC1("\tentry: %p\n", pfd->Entry);
  else
      FUNC1("\tentry: %s\n", FUNC3(FUNC2(pfd->Entry)));
}