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
typedef  int /*<<< orphan*/  SRC_PRIVATE ;

/* Variables and functions */
 int SRC_ERR_BAD_CONVERTER ; 
 scalar_t__ SRC_ERR_NO_ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC3 (SRC_PRIVATE	*psrc, int converter_type)
{
	if (FUNC1 (psrc, converter_type) == SRC_ERR_NO_ERROR)
		return SRC_ERR_NO_ERROR ;

	if (FUNC2 (psrc, converter_type) == SRC_ERR_NO_ERROR)
		return SRC_ERR_NO_ERROR ;

	if (FUNC0 (psrc, converter_type) == SRC_ERR_NO_ERROR)
		return SRC_ERR_NO_ERROR ;

	return SRC_ERR_BAD_CONVERTER ;
}