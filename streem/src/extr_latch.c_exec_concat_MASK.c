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
struct concat_data {int len; int /*<<< orphan*/ ** latch; scalar_t__ i; } ;
typedef  int /*<<< orphan*/  strm_value ;
typedef  int /*<<< orphan*/  strm_stream ;
typedef  int strm_int ;

/* Variables and functions */
 int STRM_OK ; 
 int /*<<< orphan*/  concat_start ; 
 struct concat_data* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  strm_producer ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct concat_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  struct concat_data* d = FUNC0(sizeof(struct concat_data)+sizeof(strm_stream*)*argc);
  strm_int i;
  strm_stream* s;

  d->i = 0;
  d->len = argc;
  for (i=0; i<argc; i++) {
    strm_value r;
    s = FUNC2();
    FUNC1(strm, args[i], FUNC4(s), &r);
    d->latch[i] = s;
  }
  *ret = FUNC4(FUNC3(strm_producer, concat_start, NULL, d));
  return STRM_OK;
}