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
struct rbk_data {int tbl; int /*<<< orphan*/  func; } ;
typedef  int /*<<< orphan*/  strm_value ;
typedef  int /*<<< orphan*/  strm_stream ;

/* Variables and functions */
 int STRM_NG ; 
 int STRM_OK ; 
 int /*<<< orphan*/  iter_rbk ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct rbk_data* FUNC2 (int) ; 
 int /*<<< orphan*/  rbk ; 
 int /*<<< orphan*/  rbk_finish ; 
 int /*<<< orphan*/  strm_filter ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int t ; 

__attribute__((used)) static int
FUNC6(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  struct rbk_data *d;
  FUNC1(rbk) *t;
  strm_value func;

  FUNC3(strm, argc, args, "v", &func);
  t = FUNC0(rbk);
  if (!t) return STRM_NG;
  d = FUNC2(sizeof(*d));
  d->tbl = t;
  d->func = func;
  *ret = FUNC5(FUNC4(strm_filter, iter_rbk, rbk_finish, (void*)d));
  return STRM_OK;
}