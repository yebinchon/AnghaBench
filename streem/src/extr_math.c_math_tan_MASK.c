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
typedef  int /*<<< orphan*/  strm_value ;
typedef  int /*<<< orphan*/  strm_stream ;

/* Variables and functions */
 int STRM_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,char*,double*) ; 
 int /*<<< orphan*/  FUNC2 (double) ; 

__attribute__((used)) static int
FUNC3(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  double f;

  FUNC1(strm, argc, args, "f", &f);
  *ret = FUNC0(FUNC2(f));
  return STRM_OK;
}