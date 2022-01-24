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
typedef  scalar_t__ uint32_t ;
struct TYPE_3__ {int /*<<< orphan*/  f; int /*<<< orphan*/  s; int /*<<< orphan*/  m; } ;
typedef  TYPE_1__ msf_t ;
typedef  scalar_t__ lba_t ;

/* Variables and functions */
 scalar_t__ CDIO_CD_FRAMES_PER_SEC ; 
 scalar_t__ CDIO_CD_SECS_PER_MIN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

lba_t
FUNC2 (const msf_t *msf)
{
  uint32_t lba = 0;

  FUNC0 (msf != 0);

  lba = FUNC1 (msf->m);
  lba *= CDIO_CD_SECS_PER_MIN;

  lba += FUNC1 (msf->s);
  lba *= CDIO_CD_FRAMES_PER_SEC;

  lba += FUNC1 (msf->f);

  return lba;
}