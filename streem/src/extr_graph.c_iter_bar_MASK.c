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
struct bar_data {double* data; scalar_t__ offset; int dlen; double max; scalar_t__ row; } ;
typedef  int /*<<< orphan*/  strm_value ;
struct TYPE_5__ {struct bar_data* data; } ;
typedef  TYPE_1__ strm_stream ;

/* Variables and functions */
 void* FALSE ; 
 int /*<<< orphan*/  SIGINT ; 
 int STRM_NG ; 
 int STRM_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (double*) ; 
 int FUNC2 (struct bar_data*) ; 
 void* interrupt ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct bar_data*) ; 
 int /*<<< orphan*/  sigupdate ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 double FUNC10 (int /*<<< orphan*/ ) ; 
 void* winch ; 

__attribute__((used)) static int
FUNC11(strm_stream* strm, strm_value data)
{
  struct bar_data* d = strm->data;
  double f, max = 1.0;

  if (interrupt) {
    interrupt = FALSE;
    FUNC9(SIGINT, sigupdate);
    FUNC3(d->row-1, 1);
    FUNC4();
    FUNC0(1);
  }
  if (!FUNC6(data)) {
    FUNC7(strm, "invalid data");
    return STRM_NG;
  }

  if (winch) {
    winch = FALSE;
    FUNC1(d->data);
    if (FUNC2(d) == STRM_NG) {
      FUNC8(strm);
      return STRM_NG;
    }
  }
  f = FUNC10(data);
  if (f < 0) f = 0;
  d->data[d->offset++] = f;
  max = 1.0;
  for (int i=0; i<d->dlen; i++) {
    f = d->data[i];
    if (f > max) max = f;
  }
  d->max = max;
  if (d->offset == d->dlen) {
    d->offset = 0;
  }
  FUNC5(d);
  return STRM_OK;
}