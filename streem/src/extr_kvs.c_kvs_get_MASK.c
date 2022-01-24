#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  strm_value ;
typedef  int /*<<< orphan*/  strm_string ;
typedef  int /*<<< orphan*/  strm_stream ;
struct TYPE_3__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  kv; } ;
typedef  TYPE_1__ strm_kvs ;
typedef  scalar_t__ khiter_t ;

/* Variables and functions */
 int STRM_NG ; 
 int STRM_OK ; 
 TYPE_1__* FUNC0 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  kvs ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  strm_kvs* k = FUNC0(argc, args);
  strm_string key = FUNC8(FUNC9(args[1]));
  khiter_t i;

  if (!k) {
    FUNC7(strm, "no kvs given");
    return STRM_NG;
  }
  FUNC4(&k->lock);
  i = FUNC2(kvs, k->kv, key);
  if (i == FUNC1(k->kv)) {
    *ret = FUNC6();
  }
  else {
    *ret = FUNC3(k->kv, i);
  }
  FUNC5(&k->lock);
  return STRM_OK;
}