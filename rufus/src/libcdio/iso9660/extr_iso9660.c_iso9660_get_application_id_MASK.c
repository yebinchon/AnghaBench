#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  application_id; } ;
typedef  TYPE_1__ iso9660_pvd_t ;

/* Variables and functions */
 int /*<<< orphan*/  ISO_MAX_APPLICATION_ID ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

char *
FUNC2(iso9660_pvd_t *p_pvd)
{
  if (NULL==p_pvd) return NULL;
  return FUNC0(FUNC1(p_pvd->application_id, ISO_MAX_APPLICATION_ID));
}