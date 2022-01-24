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
typedef  int /*<<< orphan*/  zio_t ;
typedef  int /*<<< orphan*/  zio_done_func_t ;
typedef  int /*<<< orphan*/  spa_t ;
typedef  enum zio_flag { ____Placeholder_zio_flag } zio_flag ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,int) ; 

zio_t *
FUNC1(spa_t *spa, zio_done_func_t *done, void *private, enum zio_flag flags)
{
	return (FUNC0(NULL, spa, NULL, done, private, flags));
}