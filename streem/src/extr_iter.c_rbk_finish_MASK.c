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
struct rbk_data {int /*<<< orphan*/  tbl; } ;
typedef  int /*<<< orphan*/  strm_value ;
struct TYPE_4__ {struct rbk_data* data; } ;
typedef  TYPE_1__ strm_stream ;
typedef  scalar_t__ khiter_t ;

/* Variables and functions */
 int STRM_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(strm_stream* strm, strm_value data)
{
  struct rbk_data *d = strm->data;
  khiter_t i;

  for (i=FUNC0(d->tbl); i!=FUNC1(d->tbl); i++) {
    if (FUNC2(d->tbl, i)) {
      strm_value values[2];

      values[0] = FUNC3(d->tbl, i);
      values[1] = FUNC4(d->tbl, i);
      FUNC6(strm, FUNC5(values, 2), NULL);
    }
  }
  return STRM_OK;
}