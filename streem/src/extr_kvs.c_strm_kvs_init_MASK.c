#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  strm_state ;

/* Variables and functions */
 int /*<<< orphan*/  kvs_close ; 
 int /*<<< orphan*/  kvs_get ; 
 int /*<<< orphan*/  kvs_new ; 
 int /*<<< orphan*/  kvs_put ; 
 int /*<<< orphan*/  kvs_str ; 
 int /*<<< orphan*/  kvs_txn ; 
 int /*<<< orphan*/  kvs_update ; 
 int /*<<< orphan*/ * ns_kvs ; 
 int /*<<< orphan*/ * ns_txn ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  txn_get ; 
 int /*<<< orphan*/  txn_put ; 
 int /*<<< orphan*/  txn_str ; 
 int /*<<< orphan*/  txn_update ; 

void
FUNC3(strm_state* state)
{
  ns_kvs = FUNC1(NULL, "kvs");
  FUNC2(ns_kvs, "get", FUNC0(kvs_get));
  FUNC2(ns_kvs, "put", FUNC0(kvs_put));
  FUNC2(ns_kvs, "update", FUNC0(kvs_update));
  FUNC2(ns_kvs, "txn", FUNC0(kvs_txn));
  FUNC2(ns_kvs, "close", FUNC0(kvs_close));
  FUNC2(ns_kvs, "string", FUNC0(kvs_str));

  ns_txn = FUNC1(NULL, "kvs_txn");
  FUNC2(ns_txn, "get", FUNC0(txn_get));
  FUNC2(ns_txn, "put", FUNC0(txn_put));
  FUNC2(ns_txn, "update", FUNC0(txn_update));
  FUNC2(ns_kvs, "string", FUNC0(txn_str));

  FUNC2(state, "kvs", FUNC0(kvs_new));
}