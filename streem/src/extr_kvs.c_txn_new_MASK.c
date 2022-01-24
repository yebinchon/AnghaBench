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
struct strm_txn {int /*<<< orphan*/  serial; int /*<<< orphan*/ * kvs; int /*<<< orphan*/  tv; int /*<<< orphan*/  type; int /*<<< orphan*/  ns; } ;
typedef  struct strm_txn strm_txn ;
typedef  int /*<<< orphan*/  strm_kvs ;

/* Variables and functions */
 int /*<<< orphan*/  STRM_PTR_AUX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct strm_txn* FUNC2 (int) ; 
 int /*<<< orphan*/  ns_txn ; 
 int /*<<< orphan*/  txn ; 

__attribute__((used)) static strm_txn*
FUNC3(strm_kvs* kvs)
{
  struct strm_txn *t = FUNC2(sizeof(struct strm_txn));

  if (!t) return NULL;
  t->ns = ns_txn;
  t->type = STRM_PTR_AUX;
  t->tv = FUNC0(txn);
  t->kvs = kvs;
  t->serial = FUNC1(kvs);
  return t;
}