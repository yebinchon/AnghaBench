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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  iso9660_t ;
typedef  char iso9660_stat_t ;
typedef  int bool_3way_t ;

/* Variables and functions */
 int /*<<< orphan*/  UINT64_MAX ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int dunno ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,char**,int /*<<< orphan*/ *) ; 
 int nope ; 
 char* FUNC3 (char*) ; 

extern bool_3way_t
FUNC4(iso9660_t *p_iso, uint64_t u_file_limit)
{
  iso9660_stat_t *p_root;
  char *p_psz_splitpath[2] = {FUNC3("/"), FUNC3("")};
  bool_3way_t is_rr = nope;

  if (!p_iso) return false;

  p_root = FUNC0 (p_iso);
  if (!p_root) return dunno;

  if (u_file_limit == 0) u_file_limit = UINT64_MAX;

  is_rr = FUNC2 (p_iso, p_root, p_psz_splitpath, &u_file_limit);
  FUNC1(p_root);
  FUNC1(p_psz_splitpath[0]);
  FUNC1(p_psz_splitpath[1]);

  return is_rr;
}