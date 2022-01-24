#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
struct TYPE_25__ {scalar_t__ RestoreMethod; int* Stamps; int Size; int /*<<< orphan*/  MaxOrder; int /*<<< orphan*/  OrderFall; scalar_t__ GlueCount; TYPE_1__* MaxContext; TYPE_1__* MinContext; } ;
struct TYPE_24__ {int Symbol; int Freq; } ;
struct TYPE_23__ {scalar_t__ NumStats; int Flags; int SummFreq; scalar_t__ Suffix; } ;
typedef  TYPE_1__* CTX_PTR ;
typedef  TYPE_2__ CPpmd_State ;
typedef  TYPE_3__ CPpmd8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int FUNC2 (TYPE_3__*) ; 
 TYPE_2__* FUNC3 (TYPE_1__*) ; 
 scalar_t__ PPMD8_RESTORE_METHOD_FREEZE ; 
 scalar_t__ PPMD8_RESTORE_METHOD_RESTART ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 TYPE_2__* FUNC8 (TYPE_1__*) ; 
 void* FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,TYPE_2__*) ; 

__attribute__((used)) static void FUNC11(CPpmd8 *p, CTX_PTR c1
    #ifdef PPMD8_FREEZE_SUPPORT
    , CTX_PTR fSuccessor
    #endif
    )
{
  CTX_PTR c;
  CPpmd_State *s;
  FUNC4(0);
  for (c = p->MaxContext; c != c1; c = FUNC9(c))
    if (--(c->NumStats) == 0)
    {
      s = FUNC8(c);
      c->Flags = (c->Flags & 0x10) + 0x08 * (s->Symbol >= 0x40);
      *FUNC3(c) = *s;
      FUNC10(p, s);
      FUNC3(c)->Freq = (FUNC3(c)->Freq + 11) >> 3;
    }
    else
      FUNC5(p, c, (c->NumStats+3) >> 1, 0);
 
  for (; c != p->MinContext; c = FUNC9(c))
    if (!c->NumStats)
      FUNC3(c)->Freq -= FUNC3(c)->Freq >> 1;
    else if ((c->SummFreq += 4) > 128 + 4 * c->NumStats)
      FUNC5(p, c, (c->NumStats + 2) >> 1, 1);

  #ifdef PPMD8_FREEZE_SUPPORT
  if (p->RestoreMethod > PPMD8_RESTORE_METHOD_FREEZE)
  {
    p->MaxContext = fSuccessor;
    p->GlueCount += !(p->Stamps[1] & 1);
  }
  else if (p->RestoreMethod == PPMD8_RESTORE_METHOD_FREEZE)
  {
    while (p->MaxContext->Suffix)
      p->MaxContext = SUFFIX(p->MaxContext);
    RemoveBinContexts(p, p->MaxContext, 0);
    p->RestoreMethod++;
    p->GlueCount = 0;
    p->OrderFall = p->MaxOrder;
  }
  else
  #endif
  if (p->RestoreMethod == PPMD8_RESTORE_METHOD_RESTART || FUNC2(p) < (p->Size >> 1))
    FUNC7(p);
  else
  {
    while (p->MaxContext->Suffix)
      p->MaxContext = FUNC9(p->MaxContext);
    do
    {
      FUNC0(p, p->MaxContext, 0);
      FUNC1(p);
    }
    while (FUNC2(p) > 3 * (p->Size >> 2));
    p->GlueCount = 0;
    p->OrderFall = p->MaxOrder;
  }
}