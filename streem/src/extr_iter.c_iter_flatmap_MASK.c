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
struct map_data {int /*<<< orphan*/  func; } ;
typedef  int /*<<< orphan*/  strm_value ;
struct TYPE_6__ {struct map_data* data; } ;
typedef  TYPE_1__ strm_stream ;
typedef  size_t strm_int ;

/* Variables and functions */
 scalar_t__ STRM_NG ; 
 int STRM_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 

__attribute__((used)) static int
FUNC6(strm_stream* strm, strm_value data)
{
  struct map_data* d = strm->data;
  strm_value val;
  strm_int i, len;
  strm_value* e;

  if (FUNC4(strm, d->func, 1, &data, &val) == STRM_NG) {
    return STRM_NG;
  }
  if (!FUNC0(val)) {
    FUNC5(strm, "no array given for flatmap");
    return STRM_NG;
  }
  len = FUNC1(val);
  e = FUNC2(val);
  for (i=0; i<len; i++){
    FUNC3(strm, e[i], NULL);
  }
  return STRM_OK;
}