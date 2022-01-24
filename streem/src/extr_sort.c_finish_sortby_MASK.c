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
struct sortby_value {int dummy; } ;
struct sortby_data {size_t len; struct sortby_data* buf; int /*<<< orphan*/  o; } ;
typedef  int /*<<< orphan*/  strm_value ;
struct TYPE_4__ {struct sortby_data* data; } ;
typedef  TYPE_1__ strm_stream ;
typedef  size_t strm_int ;

/* Variables and functions */
 int STRM_OK ; 
 int /*<<< orphan*/  FUNC0 (struct sortby_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct sortby_data*,size_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sortby_cmp ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(strm_stream* strm, strm_value data)
{
  struct sortby_data* d = strm->data;
  strm_int i, len;

  FUNC1(d->buf, d->len, sizeof(struct sortby_value), sortby_cmp);
  for (i=0,len=d->len; i<len; i++) {
    FUNC2(strm, d->buf[i].o, NULL);
  }
  FUNC0(d->buf);
  FUNC0(d);
  return STRM_OK;
}