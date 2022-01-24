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
struct correl_data {scalar_t__ sxy; scalar_t__ syy; scalar_t__ sxx; scalar_t__ sy; scalar_t__ sx; scalar_t__ n; } ;
typedef  int /*<<< orphan*/  strm_value ;
typedef  int /*<<< orphan*/  strm_stream ;

/* Variables and functions */
 int STRM_NG ; 
 int STRM_OK ; 
 int /*<<< orphan*/  correl_finish ; 
 int /*<<< orphan*/  iter_correl ; 
 struct correl_data* FUNC0 (int) ; 
 int /*<<< orphan*/  strm_filter ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  struct correl_data* d;

  FUNC1(strm, argc, args, "");
  d = FUNC0(sizeof(struct correl_data));
  if (!d) return STRM_NG;
  d->n = 0;
  d->sx = d->sy = d->sxx = d->syy = d->sxy = 0;
  *ret = FUNC3(FUNC2(strm_filter, iter_correl,
                                           correl_finish, (void*)d));
  return STRM_OK;
}