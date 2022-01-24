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
typedef  int /*<<< orphan*/ * (* stat_traverse_t ) (void*,int /*<<< orphan*/ *,char**) ;
typedef  int /*<<< orphan*/ * (* stat_root_t ) (void*) ;
typedef  int /*<<< orphan*/  iso9660_stat_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char**) ; 
 char** FUNC1 (char const*,char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static iso9660_stat_t *
FUNC3 (void *p_image, stat_root_t stat_root,
		   stat_traverse_t stat_traverse,
		   const char psz_path[])
{
  iso9660_stat_t *p_root;
  char **p_psz_splitpath;
  iso9660_stat_t *p_stat;

  if (!p_image)  return NULL;
  if (!psz_path) return NULL;

  p_root = stat_root (p_image);
  if (!p_root) return NULL;

  p_psz_splitpath = FUNC1 (psz_path, '/');
  p_stat = stat_traverse (p_image, p_root, p_psz_splitpath);
  FUNC2(p_root);
  FUNC0 (p_psz_splitpath);

  return p_stat;
}