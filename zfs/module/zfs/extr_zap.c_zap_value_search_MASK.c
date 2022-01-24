#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zap_cursor_t ;
struct TYPE_5__ {int za_first_integer; int /*<<< orphan*/  za_name; } ;
typedef  TYPE_1__ zap_attribute_t ;
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;

/* Variables and functions */
 int /*<<< orphan*/  KM_SLEEP ; 
 TYPE_1__* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 

int
FUNC7(objset_t *os, uint64_t zapobj, uint64_t value, uint64_t mask,
    char *name)
{
	zap_cursor_t zc;
	int err;

	if (mask == 0)
		mask = -1ULL;

	zap_attribute_t *za = FUNC0(sizeof (*za), KM_SLEEP);
	for (FUNC5(&zc, os, zapobj);
	    (err = FUNC6(&zc, za)) == 0;
	    FUNC3(&zc)) {
		if ((za->za_first_integer & mask) == (value & mask)) {
			(void) FUNC2(name, za->za_name);
			break;
		}
	}
	FUNC4(&zc);
	FUNC1(za, sizeof (*za));
	return (err);
}