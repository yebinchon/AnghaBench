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
struct slice_data {scalar_t__ i; struct slice_data* buf; } ;
typedef  int /*<<< orphan*/  strm_value ;
struct TYPE_4__ {struct slice_data* data; } ;
typedef  TYPE_1__ strm_stream ;
typedef  int /*<<< orphan*/  strm_array ;

/* Variables and functions */
 int STRM_OK ; 
 int /*<<< orphan*/  FUNC0 (struct slice_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct slice_data*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(strm_stream* strm, strm_value data)
{
  struct slice_data* d = strm->data;

  if (d->i > 0) {
    strm_array ary = FUNC1(d->buf, d->i);
    FUNC3(strm, FUNC2(ary), NULL);
  }
  FUNC0(d->buf);
  FUNC0(d);
  return STRM_OK;
}