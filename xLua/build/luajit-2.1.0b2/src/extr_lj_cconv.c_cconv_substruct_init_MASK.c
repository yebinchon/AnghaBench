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
struct TYPE_8__ {int info; int size; int /*<<< orphan*/  name; scalar_t__ sib; } ;
typedef  int /*<<< orphan*/  TValue ;
typedef  int MSize ;
typedef  scalar_t__ CTypeID ;
typedef  TYPE_1__ CType ;
typedef  int /*<<< orphan*/  CTState ;

/* Variables and functions */
 int /*<<< orphan*/  CTA_SUBTYPE ; 
 int CTF_UNION ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(CTState *cts, CType *d, uint8_t *dp,
				 TValue *o, MSize len, MSize *ip)
{
  CTypeID id = d->sib;
  while (id) {
    CType *df = FUNC0(cts, id);
    id = df->sib;
    if (FUNC2(df->info) || FUNC1(df->info)) {
      MSize i = *ip;
      if (!FUNC5(df->name)) continue;  /* Ignore unnamed fields. */
      if (i >= len) break;
      *ip = i + 1;
      if (FUNC2(df->info))
	FUNC7(cts, FUNC4(cts, df), dp+df->size, o + i, 0);
      else
	FUNC6(cts, df, dp+df->size, o + i);
      if ((d->info & CTF_UNION)) break;
    } else if (FUNC3(df->info, CTA_SUBTYPE)) {
      FUNC8(cts, FUNC4(cts, df),
			   dp+df->size, o, len, ip);
      if ((d->info & CTF_UNION)) break;
    }  /* Ignore all other entries in the chain. */
  }
}