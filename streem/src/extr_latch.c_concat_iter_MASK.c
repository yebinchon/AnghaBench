#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct concat_data {size_t i; size_t len; TYPE_1__** latch; } ;
typedef  int /*<<< orphan*/  strm_value ;
struct TYPE_9__ {struct concat_data* data; } ;
typedef  TYPE_1__ strm_stream ;

/* Variables and functions */
 int STRM_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__*,int (*) (TYPE_1__*,int /*<<< orphan*/ )) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC4(strm_stream* strm, strm_value data)
{
  struct concat_data* d = strm->data;

  FUNC0(strm, data, NULL);
  if (FUNC1(d->latch[d->i])) {
    FUNC3(d->latch[d->i]);
    d->i++;
  }
  if (d->i < d->len) {
    FUNC2(d->latch[d->i], strm, concat_iter);
  }
  else {
    FUNC3(strm);
  }
  return STRM_OK;
}