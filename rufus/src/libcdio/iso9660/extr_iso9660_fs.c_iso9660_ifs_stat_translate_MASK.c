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
typedef  int /*<<< orphan*/  stat_traverse_t ;
typedef  int /*<<< orphan*/  stat_root_t ;
typedef  int /*<<< orphan*/  iso9660_t ;
typedef  int /*<<< orphan*/  iso9660_stat_t ;

/* Variables and functions */
 scalar_t__ _fs_iso_stat_traverse ; 
 scalar_t__ _ifs_stat_root ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ; 

iso9660_stat_t *
FUNC1 (iso9660_t *p_iso, const char psz_path[])
{
  return FUNC0(p_iso, (stat_root_t *) _ifs_stat_root,
			   (stat_traverse_t *) _fs_iso_stat_traverse,
			   psz_path);
}