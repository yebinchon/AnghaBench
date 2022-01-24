#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
struct TYPE_23__ {int OrderFall; scalar_t__ RestoreMethod; TYPE_1__* Text; TYPE_2__* FoundState; TYPE_1__* MaxContext; } ;
struct TYPE_22__ {scalar_t__ Symbol; int Freq; } ;
struct TYPE_21__ {int SummFreq; scalar_t__ NumStats; int /*<<< orphan*/  Suffix; } ;
typedef  TYPE_1__* CTX_PTR ;
typedef  scalar_t__ CPpmd_Void_Ref ;
typedef  TYPE_2__ CPpmd_State ;
typedef  TYPE_3__ CPpmd8 ;

/* Variables and functions */
 TYPE_1__* FUNC0 (scalar_t__) ; 
 TYPE_1__* FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  False ; 
 int MAX_FREQ ; 
 TYPE_2__* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  PPMD8_MAX_ORDER ; 
 scalar_t__ PPMD8_RESTORE_METHOD_FREEZE ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 TYPE_2__* FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 TYPE_1__* FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,scalar_t__) ; 

__attribute__((used)) static CTX_PTR FUNC9(CPpmd8 *p, CPpmd_State *s1, CTX_PTR c)
{
  CPpmd_State *s = NULL;
  CTX_PTR c1 = c;
  CPpmd_Void_Ref upBranch = FUNC3(p->Text);
  
  #ifdef PPMD8_FREEZE_SUPPORT
  /* The BUG in Shkarin's code was fixed: ps could overflow in CUT_OFF mode. */
  CPpmd_State *ps[PPMD8_MAX_ORDER + 1];
  unsigned numPs = 0;
  ps[numPs++] = p->FoundState;
  #endif

  FUNC8(p->FoundState, upBranch);
  p->OrderFall++;

  for (;;)
  {
    if (s1)
    {
      c = FUNC7(c);
      s = s1;
      s1 = NULL;
    }
    else
    {
      if (!c->Suffix)
      {
        #ifdef PPMD8_FREEZE_SUPPORT
        if (p->RestoreMethod > PPMD8_RESTORE_METHOD_FREEZE)
        {
          do { SetSuccessor(ps[--numPs], REF(c)); } while (numPs);
          RESET_TEXT(1);
          p->OrderFall = 1;
        }
        #endif
        return c;
      }
      c = FUNC7(c);
      if (c->NumStats)
      {
        if ((s = FUNC5(c))->Symbol != p->FoundState->Symbol)
          do { s++; } while (s->Symbol != p->FoundState->Symbol);
        if (s->Freq < MAX_FREQ - 9)
        {
          s->Freq += 2;
          c->SummFreq += 2;
        }
      }
      else
      {
        s = FUNC2(c);
        s->Freq += (s->Freq < 32);
      }
    }
    if (FUNC6(s))
      break;
    #ifdef PPMD8_FREEZE_SUPPORT
    ps[numPs++] = s;
    #endif
    FUNC8(s, upBranch);
    p->OrderFall++;
  }
  
  #ifdef PPMD8_FREEZE_SUPPORT
  if (p->RestoreMethod > PPMD8_RESTORE_METHOD_FREEZE)
  {
    c = CTX(SUCCESSOR(s));
    do { SetSuccessor(ps[--numPs], REF(c)); } while (numPs);
    RESET_TEXT(1);
    p->OrderFall = 1;
    return c;
  }
  else
  #endif
  if (FUNC6(s) <= upBranch)
  {
    CTX_PTR successor;
    CPpmd_State *s1 = p->FoundState;
    p->FoundState = s;

    successor = FUNC1(p, False, NULL, c);
    if (successor == NULL)
      FUNC8(s, 0);
    else
      FUNC8(s, FUNC3(successor));
    p->FoundState = s1;
  }
  
  if (p->OrderFall == 1 && c1 == p->MaxContext)
  {
    FUNC8(p->FoundState, FUNC6(s));
    p->Text--;
  }
  if (FUNC6(s) == 0)
    return NULL;
  return FUNC0(FUNC6(s));
}