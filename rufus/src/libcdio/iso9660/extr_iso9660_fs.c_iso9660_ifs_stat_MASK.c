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
typedef  int /*<<< orphan*/  iso9660_t ;
typedef  int /*<<< orphan*/  iso9660_stat_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char**) ; 
 char** FUNC1 (char const*,char) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

iso9660_stat_t *
FUNC5 (iso9660_t *p_iso, const char psz_path[])
{
  iso9660_stat_t *p_root;
  char **splitpath;
  iso9660_stat_t *stat;

  if (!p_iso)    return NULL;
  if (!psz_path) return NULL;

  p_root = FUNC3 (p_iso);
  if (!p_root) return NULL;

  splitpath = FUNC1 (psz_path, '/');
  stat = FUNC2 (p_iso, p_root, splitpath);
  FUNC4(p_root);
  FUNC0 (splitpath);

  return stat;
}