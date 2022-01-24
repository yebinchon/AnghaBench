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
struct zip_data {int len; int /*<<< orphan*/ ** latch; scalar_t__ i; } ;
typedef  int /*<<< orphan*/  strm_value ;
typedef  int /*<<< orphan*/  strm_stream ;
typedef  int strm_int ;

/* Variables and functions */
 int STRM_OK ; 
 struct zip_data* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  strm_producer ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct zip_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zip_close ; 
 int /*<<< orphan*/  zip_start ; 

__attribute__((used)) static int
FUNC5(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  struct zip_data* z = FUNC0(sizeof(struct zip_data)+sizeof(strm_stream*)*argc);
  strm_int i;
  strm_stream* s;

  z->i = 0;
  z->len = argc;
  for (i=0; i<argc; i++) {
    strm_value r;
    s = FUNC2();
    FUNC1(strm, args[i], FUNC4(s), &r);
    z->latch[i] = s;
  }
  *ret = FUNC4(FUNC3(strm_producer, zip_start, zip_close, z));
  return STRM_OK;
}