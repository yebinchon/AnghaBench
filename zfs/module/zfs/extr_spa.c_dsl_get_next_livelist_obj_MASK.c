#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zap_cursor_t ;
struct TYPE_3__ {int /*<<< orphan*/  za_first_integer; } ;
typedef  TYPE_1__ zap_attribute_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC3(objset_t *os, uint64_t zap_obj, uint64_t *llp)
{
	int err;
	zap_cursor_t zc;
	zap_attribute_t za;
	FUNC1(&zc, os, zap_obj);
	err = FUNC2(&zc, &za);
	FUNC0(&zc);
	if (err == 0)
		*llp = za.za_first_integer;
	return (err);
}