#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zap_cursor_t ;
struct TYPE_5__ {int za_integer_length; int za_num_integers; int /*<<< orphan*/  za_first_integer; int /*<<< orphan*/  za_name; } ;
typedef  TYPE_1__ zap_attribute_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_6__ {int /*<<< orphan*/  spa_feat_for_write_obj; int /*<<< orphan*/  spa_meta_objset; int /*<<< orphan*/  spa_feat_for_read_obj; } ;
typedef  TYPE_2__ spa_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC7(spa_t *spa, nvlist_t *features)
{
	zap_cursor_t zc;
	zap_attribute_t za;

	if (spa->spa_feat_for_read_obj != 0) {
		for (FUNC5(&zc, spa->spa_meta_objset,
		    spa->spa_feat_for_read_obj);
		    FUNC6(&zc, &za) == 0;
		    FUNC3(&zc)) {
			FUNC0(za.za_integer_length == sizeof (uint64_t) &&
			    za.za_num_integers == 1);
			FUNC1(FUNC2(features, za.za_name,
			    za.za_first_integer));
		}
		FUNC4(&zc);
	}

	if (spa->spa_feat_for_write_obj != 0) {
		for (FUNC5(&zc, spa->spa_meta_objset,
		    spa->spa_feat_for_write_obj);
		    FUNC6(&zc, &za) == 0;
		    FUNC3(&zc)) {
			FUNC0(za.za_integer_length == sizeof (uint64_t) &&
			    za.za_num_integers == 1);
			FUNC1(FUNC2(features, za.za_name,
			    za.za_first_integer));
		}
		FUNC4(&zc);
	}
}