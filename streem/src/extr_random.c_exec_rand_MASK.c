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
struct rand_data {int /*<<< orphan*/  seed; } ;
typedef  int /*<<< orphan*/  strm_value ;
typedef  int /*<<< orphan*/  strm_stream ;
typedef  int strm_int ;

/* Variables and functions */
 int STRM_NG ; 
 int STRM_OK ; 
 int /*<<< orphan*/  FUNC0 (struct rand_data*) ; 
 int /*<<< orphan*/  gen_rand ; 
 struct rand_data* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,char*,char const**,int*) ; 
 int /*<<< orphan*/  strm_producer ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  struct rand_data* d;
  const char* s;
  strm_int len;

  FUNC3(strm, argc, args, "|s", &s, &len);
  d = FUNC1(sizeof(struct rand_data));
  if (!d) return STRM_NG;
  if (argc == 2) {
    if (len != sizeof(d->seed)) {
      FUNC4(strm, "seed size differ");
      FUNC0(d);
      return STRM_NG;
    }
    FUNC2(d->seed, s, len);
  }
  else {
    FUNC7(d->seed);
  }
  *ret = FUNC6(FUNC5(strm_producer, gen_rand, NULL, (void*)d));
  return STRM_OK;
}