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
typedef  int /*<<< orphan*/  iso9660_pvd_t ;
typedef  int /*<<< orphan*/  cdio_log_level_t ;

/* Variables and functions */
 int /*<<< orphan*/  ISO_PVD_SECTOR ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool
FUNC2 (const iso9660_t *p_iso,
			       /*out*/ iso9660_pvd_t *p_pvd,
			       cdio_log_level_t log_level)
{
  if (0 == FUNC1 (p_iso, p_pvd, ISO_PVD_SECTOR, 1)) {
// Commented out for Rufus usage
//    cdio_log ( log_level, "error reading PVD sector (%d)", ISO_PVD_SECTOR );
    return false;
  }
  return FUNC0(p_pvd, log_level);
}