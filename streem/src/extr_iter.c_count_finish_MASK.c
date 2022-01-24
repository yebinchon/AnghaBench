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
struct count_data {int /*<<< orphan*/  count; } ;
typedef  int /*<<< orphan*/  strm_value ;
struct TYPE_4__ {struct count_data* data; } ;
typedef  TYPE_1__ strm_stream ;

/* Variables and functions */
 int STRM_OK ; 
 int /*<<< orphan*/  FUNC0 (struct count_data*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(strm_stream* strm, strm_value data)
{
  struct count_data* d = strm->data;

  FUNC1(strm, FUNC2(d->count), NULL);
  FUNC0(d);
  return STRM_OK;
}