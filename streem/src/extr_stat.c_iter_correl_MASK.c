#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct correl_data {double n; double sx; double sy; int sxx; int syy; int sxy; } ;
typedef  int /*<<< orphan*/  strm_value ;
struct TYPE_4__ {struct correl_data* data; } ;
typedef  TYPE_1__ strm_stream ;

/* Variables and functions */
 int STRM_NG ; 
 int STRM_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 double FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(strm_stream* strm, strm_value data)
{
  struct correl_data* d = strm->data;
  strm_value *v;
  double dx, dy;

  if (!FUNC0(data) || FUNC1(data) != 2) {
    FUNC4(strm, "invalid data");
    return STRM_NG;
  }

  v = FUNC2(data);
  if (!FUNC3(v[0]) || !FUNC3(v[1])) {
    FUNC4(strm, "correl() requires [num, num]");
    return STRM_NG;
  }
  d->n++;
  dx = FUNC5(v[0]) - d->sx; d->sx += dx / d->n;
  dy = FUNC5(v[1]) - d->sy; d->sy += dy / d->n;
  d->sxx += (d->n-1) * dx * dx / d->n;
  d->syy += (d->n-1) * dy * dy / d->n;
  d->sxy += (d->n-1) * dx * dy / d->n;
  return STRM_OK;
}