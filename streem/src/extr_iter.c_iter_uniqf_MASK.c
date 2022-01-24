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
struct uniq_data {void* v; void* last; scalar_t__ init; int /*<<< orphan*/  func; } ;
typedef  void* strm_value ;
struct TYPE_5__ {struct uniq_data* data; } ;
typedef  TYPE_1__ strm_stream ;

/* Variables and functions */
 scalar_t__ STRM_NG ; 
 int STRM_OK ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,void*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int,void**,void**) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*) ; 

__attribute__((used)) static int
FUNC3(strm_stream* strm, strm_value data)
{
  struct uniq_data* d = strm->data;
  strm_value val;

  if (FUNC1(strm, d->func, 1, &data, &val) == STRM_NG) {
    return STRM_NG;
  }
  if (!d->init) {
    d->init = TRUE;
    d->last = data;
    d->v = val;
    FUNC0(strm, data, NULL);
    return STRM_OK;
  }
  if (!FUNC2(val, d->v)) {
    d->last = data;
    d->v = val;
    FUNC0(strm, data, NULL);
  }
  return STRM_OK;
}