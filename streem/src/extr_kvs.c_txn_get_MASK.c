#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  strm_value ;
struct TYPE_6__ {scalar_t__ serial; int /*<<< orphan*/  tv; TYPE_2__* kvs; } ;
typedef  TYPE_1__ strm_txn ;
typedef  int /*<<< orphan*/  strm_string ;
typedef  int /*<<< orphan*/  strm_stream ;
struct TYPE_7__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  kv; } ;
typedef  TYPE_2__ strm_kvs ;
typedef  scalar_t__ khiter_t ;

/* Variables and functions */
 int STRM_OK ; 
 TYPE_1__* FUNC0 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  kvs ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  txn ; 
 int FUNC10 (TYPE_1__*) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC12(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  strm_txn* t = FUNC0(argc, args);
  strm_kvs* k;
  strm_string key = FUNC8(FUNC9(args[1]));
  khiter_t i;

  if (!t) return FUNC11(strm);
  k = t->kvs;
  if (t->serial != FUNC4(k)) {
    return FUNC10(t);
  }
  i = FUNC2(txn, t->tv, key);
  if (i == FUNC1(t->tv)) {     /* not in transaction */
    FUNC5(&k->lock);
    i = FUNC2(kvs, k->kv, key);
    if (i == FUNC1(k->kv)) {     /* not in database */
      *ret = FUNC7();
    }
    else {
      *ret = FUNC3(k->kv, i);
    }
    FUNC6(&k->lock);
  }
  else {
    *ret = FUNC3(t->tv, i);
  }
  return STRM_OK;
}