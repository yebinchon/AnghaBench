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
struct TYPE_6__ {int abd_flags; scalar_t__ abd_size; } ;
typedef  TYPE_1__ abd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int ABD_FLAG_META ; 
 int ABD_FLAG_OWNER ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  abdstat_linear_cnt ; 
 int /*<<< orphan*/  abdstat_linear_data_size ; 

void
FUNC6(abd_t *abd)
{
	FUNC2(FUNC3(abd));
	FUNC2(abd->abd_flags & ABD_FLAG_OWNER);

	/*
	 * abd_free() needs to handle LINEAR_PAGE ABD's specially.
	 * Since that flag does not survive the
	 * abd_release_ownership_of_buf() -> abd_get_from_buf() ->
	 * abd_take_ownership_of_buf() sequence, we don't allow releasing
	 * these "linear but not zio_[data_]buf_alloc()'ed" ABD's.
	 */
	FUNC2(!FUNC4(abd));

	FUNC5(abd);

	abd->abd_flags &= ~ABD_FLAG_OWNER;
	/* Disable this flag since we no longer own the data buffer */
	abd->abd_flags &= ~ABD_FLAG_META;

	FUNC0(abdstat_linear_cnt);
	FUNC1(abdstat_linear_data_size, -(int)abd->abd_size);
}