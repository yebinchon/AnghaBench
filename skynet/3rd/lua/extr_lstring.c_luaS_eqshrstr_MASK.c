#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ lu_byte ;
struct TYPE_5__ {scalar_t__ shrlen; scalar_t__ tt; scalar_t__ id; } ;
typedef  TYPE_1__ TString ;

/* Variables and functions */
 scalar_t__ LUA_TSHRSTR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

int FUNC3 (TString *a, TString *b) {
  lu_byte len = a->shrlen;
  FUNC1(b->tt == LUA_TSHRSTR);
  int r = len == b->shrlen && (FUNC2(FUNC0(a), FUNC0(b), len) == 0);
  if (r) {
    if (a->id < b->id) {
      a->id = b->id;
    } else {
      b->id = a->id;
    }
  }
  return r;
}