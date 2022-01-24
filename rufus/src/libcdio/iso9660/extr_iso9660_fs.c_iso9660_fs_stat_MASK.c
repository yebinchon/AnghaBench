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
typedef  int /*<<< orphan*/  iso9660_stat_t ;
typedef  int /*<<< orphan*/  CdIo_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char**) ; 
 char** FUNC1 (char const*,char) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

iso9660_stat_t *
FUNC5 (CdIo_t *p_cdio, const char psz_path[])
{
  iso9660_stat_t *p_root;
  char **p_psz_splitpath;
  iso9660_stat_t *p_stat;

  if (!p_cdio)   return NULL;
  if (!psz_path) return NULL;

  p_root = FUNC2 (p_cdio);

  if (!p_root)   return NULL;

  p_psz_splitpath = FUNC1 (psz_path, '/');
  p_stat = FUNC3 (p_cdio, p_root, p_psz_splitpath);
  FUNC4(p_root);
  FUNC0 (p_psz_splitpath);

  return p_stat;
}