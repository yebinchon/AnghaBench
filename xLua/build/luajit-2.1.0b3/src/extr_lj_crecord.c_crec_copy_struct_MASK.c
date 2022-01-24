#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int ofs; scalar_t__ tp; } ;
struct TYPE_9__ {int size; int /*<<< orphan*/  info; int /*<<< orphan*/  name; scalar_t__ sib; } ;
typedef  size_t MSize ;
typedef  scalar_t__ IRType ;
typedef  scalar_t__ CTypeID ;
typedef  TYPE_1__ CType ;
typedef  int /*<<< orphan*/  CTState ;
typedef  TYPE_2__ CRecMemList ;

/* Variables and functions */
 size_t CREC_COPY_MAXUNROLL ; 
 scalar_t__ IRT_CDATA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static MSize FUNC7(CRecMemList *ml, CTState *cts, CType *ct)
{
  CTypeID fid = ct->sib;
  MSize mlp = 0;
  while (fid) {
    CType *df = FUNC1(cts, fid);
    fid = df->sib;
    if (FUNC4(df->info)) {
      CType *cct;
      IRType tp;
      if (!FUNC6(df->name)) continue;  /* Ignore unnamed fields. */
      cct = FUNC5(cts, df);  /* Field type. */
      tp = FUNC0(cts, cct);
      if (tp == IRT_CDATA) return 0;  /* NYI: aggregates. */
      if (mlp >= CREC_COPY_MAXUNROLL) return 0;
      ml[mlp].ofs = df->size;
      ml[mlp].tp = tp;
      mlp++;
      if (FUNC2(cct->info)) {
	if (mlp >= CREC_COPY_MAXUNROLL) return 0;
	ml[mlp].ofs = df->size + (cct->size >> 1);
	ml[mlp].tp = tp;
	mlp++;
      }
    } else if (!FUNC3(df->info)) {
      /* NYI: bitfields and sub-structures. */
      return 0;
    }
  }
  return mlp;
}