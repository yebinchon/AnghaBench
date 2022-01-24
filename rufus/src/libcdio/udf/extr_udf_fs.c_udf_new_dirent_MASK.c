#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  i_part_start; } ;
typedef  TYPE_1__ udf_t ;
struct TYPE_10__ {int /*<<< orphan*/  info_len; } ;
typedef  TYPE_2__ udf_file_entry_t ;
struct TYPE_11__ {int b_dir; int b_parent; int /*<<< orphan*/  i_loc_end; int /*<<< orphan*/  i_loc; int /*<<< orphan*/  fe; int /*<<< orphan*/  dir_left; int /*<<< orphan*/  i_part_start; TYPE_1__* p_udf; int /*<<< orphan*/  psz_name; } ;
typedef  TYPE_3__ udf_dirent_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static udf_dirent_t *
FUNC5(udf_file_entry_t *p_udf_fe, udf_t *p_udf,
	       const char *psz_name, bool b_dir, bool b_parent)
{
  udf_dirent_t *p_udf_dirent = (udf_dirent_t *)
    FUNC0(1, sizeof(udf_dirent_t));
  if (!p_udf_dirent) return NULL;

  p_udf_dirent->psz_name     = FUNC2(psz_name);
  p_udf_dirent->b_dir        = b_dir;
  p_udf_dirent->b_parent     = b_parent;
  p_udf_dirent->p_udf        = p_udf;
  p_udf_dirent->i_part_start = p_udf->i_part_start;
  p_udf_dirent->dir_left     = FUNC4(p_udf_fe->info_len);

  FUNC1(&(p_udf_dirent->fe), p_udf_fe,
	 sizeof(udf_file_entry_t));
  FUNC3( p_udf_fe, &(p_udf_dirent->i_loc),
	       &(p_udf_dirent->i_loc_end) );
  return p_udf_dirent;
}