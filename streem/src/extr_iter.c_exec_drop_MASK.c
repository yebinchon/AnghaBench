#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct take_data {scalar_t__ n; } ;
typedef  int /*<<< orphan*/  strm_value ;
typedef  int /*<<< orphan*/  strm_stream ;
typedef  scalar_t__ strm_int ;

/* Variables and functions */
 int STRM_NG ; 
 int STRM_OK ; 
 int /*<<< orphan*/  iter_drop ; 
 struct take_data* FUNC0 (int) ; 
 int /*<<< orphan*/  strm_filter ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  struct take_data* d;
  strm_int n;

  FUNC1(strm, argc, args, "i", &n);
  if (n < 0) {
    FUNC2(strm, "negative iteration");
    return STRM_NG;
  }
  d = FUNC0(sizeof(*d));
  if (!d) return STRM_NG;
  d->n = n;
  *ret = FUNC4(FUNC3(strm_filter, iter_drop, NULL, (void*)d));
  return STRM_OK;
}