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
struct array_data {scalar_t__ n; int /*<<< orphan*/  arr; } ;
typedef  int /*<<< orphan*/  strm_value ;
struct TYPE_6__ {struct array_data* data; } ;
typedef  TYPE_1__ strm_stream ;

/* Variables and functions */
 int STRM_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int (*) (TYPE_1__*,int /*<<< orphan*/ )) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC4(strm_stream* strm, strm_value data)
{
  struct array_data *arrd = strm->data;

  if (arrd->n == FUNC0(arrd->arr)) {
    FUNC3(strm);
    return STRM_OK;
  }
  FUNC2(strm, FUNC1(arrd->arr)[arrd->n++], arr_exec);
  return STRM_OK;
}