#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  byte ;
typedef  TYPE_3__* adns_query ;
struct TYPE_14__ {scalar_t__ bytes; int /*<<< orphan*/  untyped; } ;
struct TYPE_16__ {int nrrs; size_t rrsz; int /*<<< orphan*/  status; scalar_t__ owner; scalar_t__ cname; TYPE_2__ rrs; } ;
typedef  TYPE_4__ adns_answer ;
struct TYPE_15__ {int interim_allocd; TYPE_4__* answer; scalar_t__ preserved_allocd; TYPE_1__* typei; int /*<<< orphan*/ * final_allocspace; } ;
struct TYPE_13__ {int /*<<< orphan*/  (* makefinal ) (TYPE_3__*,scalar_t__) ;} ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  adns_s_nomemory ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 TYPE_4__* FUNC5 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,scalar_t__) ; 

__attribute__((used)) static void FUNC7(adns_query qu) {
  adns_answer *ans;
  int rrn;

  ans= qu->answer;

  if (qu->interim_allocd) {
    ans= FUNC5(qu->answer, FUNC0(FUNC0(sizeof(*ans)) + qu->interim_allocd));
    if (!ans) goto x_nomem;
    qu->answer= ans;
  }

  qu->final_allocspace= (byte*)ans + FUNC0(sizeof(*ans));
  FUNC2(qu,&ans->cname);
  FUNC2(qu,&ans->owner);

  if (ans->nrrs) {
    FUNC1(qu, &ans->rrs.untyped, (size_t) ans->nrrs*ans->rrsz);

    for (rrn=0; rrn<ans->nrrs; rrn++)
      qu->typei->makefinal(qu, ans->rrs.bytes + rrn*ans->rrsz);
  }

  FUNC4(qu);
  return;

 x_nomem:
  qu->preserved_allocd= 0;
  qu->answer->cname= 0;
  qu->answer->owner= 0;
  FUNC3(qu); /* (but we just threw away the preserved stuff) */

  qu->answer->status= adns_s_nomemory;
  FUNC4(qu);
}