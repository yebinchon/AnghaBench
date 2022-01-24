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
struct sort_data {size_t len; struct sort_data* buf; int /*<<< orphan*/  func; } ;
struct sort_arg {int /*<<< orphan*/  func; TYPE_1__* strm; } ;
typedef  int /*<<< orphan*/  strm_value ;
struct TYPE_4__ {struct sort_data* data; } ;
typedef  TYPE_1__ strm_stream ;
typedef  size_t strm_int ;

/* Variables and functions */
 int STRM_OK ; 
 int /*<<< orphan*/  FUNC0 (struct sort_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct sort_data*,size_t,struct sort_arg*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct sort_data,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(strm_stream* strm, strm_value data)
{
  struct sort_data* d = strm->data;
  strm_int i, len;

  if (FUNC3(d->func)) {
    FUNC1(d->buf, d->len, NULL);
  }
  else {
    struct sort_arg arg;

    arg.strm = strm;
    arg.func = d->func;
    FUNC1(d->buf, d->len, &arg);
  }

  for (i=0,len=d->len; i<len; i++) {
    FUNC2(strm, d->buf[i], NULL);
  }
  FUNC0(d->buf);
  FUNC0(d);
  return STRM_OK;
}