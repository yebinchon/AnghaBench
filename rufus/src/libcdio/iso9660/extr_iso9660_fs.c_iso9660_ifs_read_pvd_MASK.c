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

/* Variables and functions */
 int /*<<< orphan*/  CDIO_LOG_WARN ; 
 int FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

bool
FUNC1 (const iso9660_t *p_iso, /*out*/ iso9660_pvd_t *p_pvd)
{
  return FUNC0(p_iso, p_pvd, CDIO_LOG_WARN);
}