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
typedef  int /*<<< orphan*/  lsn_t ;
typedef  int /*<<< orphan*/  iso9660_stat_t ;
typedef  int /*<<< orphan*/  iso9660_readdir_t ;
typedef  int /*<<< orphan*/  CdIo_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ iso9660_fs_readdir ; 

iso9660_stat_t *
FUNC2(CdIo_t *p_cdio, lsn_t i_lsn)
{
  char *psz_full_filename = NULL;
  iso9660_stat_t * p_statbuf;
  p_statbuf = FUNC0 (p_cdio, (iso9660_readdir_t *) iso9660_fs_readdir,
				"/", i_lsn, &psz_full_filename);
  if (psz_full_filename != NULL)
    FUNC1(psz_full_filename);
  return p_statbuf;
}