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
struct take_data {scalar_t__ n; } ;
typedef  int /*<<< orphan*/  strm_value ;
struct TYPE_4__ {struct take_data* data; } ;
typedef  TYPE_1__ strm_stream ;

/* Variables and functions */
 int STRM_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC1(strm_stream* strm, strm_value data)
{
  struct take_data* d = strm->data;

  if (d->n > 0) {
    d->n--;
    return STRM_OK;
  }
  FUNC0(strm, data, NULL);
  return STRM_OK;
}