#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct seq_data {scalar_t__ end; scalar_t__ n; scalar_t__ inc; } ;
typedef  int /*<<< orphan*/  strm_value ;
struct TYPE_6__ {struct seq_data* data; } ;
typedef  TYPE_1__ strm_stream ;

/* Variables and functions */
 int STRM_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int (*) (TYPE_1__*,int /*<<< orphan*/ )) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC3(strm_stream* strm, strm_value data)
{
  struct seq_data* d = strm->data;

  if (d->end > 0 && d->n > d->end) {
    FUNC2(strm);
    return STRM_OK;
  }
  FUNC0(strm, FUNC1(d->n), gen_seq);
  d->n += d->inc;
  return STRM_OK;
}