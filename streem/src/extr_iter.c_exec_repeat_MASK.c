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
struct repeat_data {scalar_t__ count; int /*<<< orphan*/  v; } ;
typedef  int /*<<< orphan*/  strm_value ;
typedef  int /*<<< orphan*/  strm_stream ;
typedef  scalar_t__ strm_int ;

/* Variables and functions */
 int STRM_NG ; 
 int STRM_OK ; 
 int /*<<< orphan*/  fin_repeat ; 
 int /*<<< orphan*/  gen_repeat ; 
 struct repeat_data* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  strm_producer ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  strm_value v;
  strm_int n = -1;
  struct repeat_data *d;

  FUNC1(strm, argc, args, "v|i", &v, &n);
  if (argc == 2 && n <= 0) {
    FUNC2(strm, "invalid count number");
    return STRM_NG;
  }
  d = FUNC0(sizeof(*d));
  d->v = v;
  d->count = n;
  *ret = FUNC4(FUNC3(strm_producer, gen_repeat, fin_repeat, (void*)d));
  return STRM_OK;
}