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
typedef  int /*<<< orphan*/  cdio_stream_io_functions ;
struct TYPE_4__ {int /*<<< orphan*/  op; void* user_data; } ;
typedef  TYPE_1__ CdioDataSource_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 

CdioDataSource_t *
FUNC3(void *user_data, const cdio_stream_io_functions *funcs)
{
  CdioDataSource_t *new_obj;

  new_obj = FUNC0 (1, sizeof (CdioDataSource_t));
  FUNC1 (new_obj != NULL);

  new_obj->user_data = user_data;
  FUNC2(&(new_obj->op), funcs, sizeof(cdio_stream_io_functions));

  return new_obj;
}