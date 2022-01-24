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
struct sample_data {int len; int /*<<< orphan*/  seed; scalar_t__ i; } ;
typedef  int /*<<< orphan*/  strm_value ;
typedef  int /*<<< orphan*/  strm_stream ;
typedef  int strm_int ;

/* Variables and functions */
 int STRM_NG ; 
 int STRM_OK ; 
 int /*<<< orphan*/  finish_sample ; 
 int /*<<< orphan*/  iter_sample ; 
 struct sample_data* FUNC0 (int) ; 
 int /*<<< orphan*/  strm_filter ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,char*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  struct sample_data* d;
  strm_int len;

  FUNC1(strm, argc, args, "i", &len);
  d = FUNC0(sizeof(struct sample_data)+sizeof(strm_value)*len);
  if (!d) return STRM_NG;
  d->len = len;
  d->i = 0;
  FUNC4(d->seed);
  *ret = FUNC3(FUNC2(strm_filter, iter_sample,
                                           finish_sample, (void*)d));
  return STRM_OK;
}