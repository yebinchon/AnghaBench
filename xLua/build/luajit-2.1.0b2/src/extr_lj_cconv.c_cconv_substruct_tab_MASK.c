#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ int32_t ;
struct TYPE_8__ {int info; int size; int /*<<< orphan*/  name; scalar_t__ sib; } ;
typedef  int /*<<< orphan*/  TValue ;
typedef  int /*<<< orphan*/  GCtab ;
typedef  scalar_t__ CTypeID ;
typedef  TYPE_1__ CType ;
typedef  int /*<<< orphan*/  CTState ;
typedef  int /*<<< orphan*/  CTInfo ;

/* Variables and functions */
 int /*<<< orphan*/  CTA_SUBTYPE ; 
 int CTF_UNION ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(CTState *cts, CType *d, uint8_t *dp,
				GCtab *t, int32_t *ip, CTInfo flags)
{
  CTypeID id = d->sib;
  while (id) {
    CType *df = FUNC0(cts, id);
    id = df->sib;
    if (FUNC2(df->info) || FUNC1(df->info)) {
      TValue *tv;
      int32_t i = *ip, iz = i;
      if (!FUNC6(df->name)) continue;  /* Ignore unnamed fields. */
      if (i >= 0) {
      retry:
	tv = (TValue *)FUNC9(t, i);
	if (!tv || FUNC11(tv)) {
	  if (i == 0) { i = 1; goto retry; }  /* 1-based tables. */
	  if (iz == 0) { *ip = i = -1; goto tryname; }  /* Init named fields. */
	  break;  /* Stop at first nil. */
	}
	*ip = i + 1;
      } else {
      tryname:
	tv = (TValue *)FUNC10(t, FUNC5(FUNC6(df->name)));
	if (!tv || FUNC11(tv)) continue;
      }
      if (FUNC2(df->info))
	FUNC8(cts, FUNC4(cts, df), dp+df->size, tv, flags);
      else
	FUNC7(cts, df, dp+df->size, tv);
      if ((d->info & CTF_UNION)) break;
    } else if (FUNC3(df->info, CTA_SUBTYPE)) {
      FUNC12(cts, FUNC4(cts, df),
			  dp+df->size, t, ip, flags);
    }  /* Ignore all other entries in the chain. */
  }
}