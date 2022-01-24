#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;

/* Type definitions */
struct TYPE_27__ {int* UnitsStart; unsigned int MaxOrder; } ;
struct TYPE_26__ {int Symbol; int Freq; } ;
struct TYPE_25__ {int NumStats; int Flags; int SummFreq; int /*<<< orphan*/  Stats; } ;
typedef  TYPE_1__* CTX_PTR ;
typedef  int /*<<< orphan*/  CPpmd_Void_Ref ;
typedef  TYPE_2__ CPpmd_State ;
typedef  TYPE_3__ CPpmd8 ;
typedef  int Byte ;

/* Variables and functions */
 TYPE_1__* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_2__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_2__*,unsigned int) ; 
 TYPE_2__* FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,TYPE_1__*,unsigned int,int) ; 
 TYPE_2__* FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,TYPE_2__*) ; 

__attribute__((used)) static CPpmd_Void_Ref FUNC13(CPpmd8 *p, CTX_PTR ctx, unsigned order)
{
  int i;
  unsigned tmp;
  CPpmd_State *s;
  
  if (!ctx->NumStats)
  {
    s = FUNC3(ctx);
    if ((Byte *)FUNC4(p, FUNC9(s)) >= p->UnitsStart)
    {
      if (order < p->MaxOrder)
        FUNC10(s, FUNC13(p, FUNC0(FUNC9(s)), order + 1));
      else
        FUNC10(s, 0);
      if (FUNC9(s) || order <= 9) /* O_BOUND */
        return FUNC5(ctx);
    }
    FUNC11(p, ctx);
    return 0;
  }

  ctx->Stats = FUNC8(FUNC2(p, FUNC7(ctx), tmp = ((unsigned)ctx->NumStats + 2) >> 1));

  for (s = FUNC7(ctx) + (i = ctx->NumStats); s >= FUNC7(ctx); s--)
    if ((Byte *)FUNC4(p, FUNC9(s)) < p->UnitsStart)
    {
      CPpmd_State *s2 = FUNC7(ctx) + (i--);
      FUNC10(s, 0);
      FUNC12(s, s2);
    }
    else if (order < p->MaxOrder)
      FUNC10(s, FUNC13(p, FUNC0(FUNC9(s)), order + 1));
    else
      FUNC10(s, 0);
    
  if (i != ctx->NumStats && order)
  {
    ctx->NumStats = (Byte)i;
    s = FUNC7(ctx);
    if (i < 0)
    {
      FUNC1(p, s, tmp);
      FUNC11(p, ctx);
      return 0;
    }
    if (i == 0)
    {
      ctx->Flags = (ctx->Flags & 0x10) + 0x08 * (s->Symbol >= 0x40);
      *FUNC3(ctx) = *s;
      FUNC1(p, s, tmp);
      FUNC3(ctx)->Freq = (Byte)((unsigned)FUNC3(ctx)->Freq + 11) >> 3;
    }
    else
      FUNC6(p, ctx, tmp, ctx->SummFreq > 16 * i);
  }
  return FUNC5(ctx);
}