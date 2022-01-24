#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {void* version; int /*<<< orphan*/  id; void* type; } ;
typedef  TYPE_1__ iso_volume_descriptor_t ;
typedef  int /*<<< orphan*/  ied ;

/* Variables and functions */
 int /*<<< orphan*/  ISO9660_DCHARS ; 
 int ISO_BLOCKSIZE ; 
 int /*<<< orphan*/  ISO_STANDARD_ID ; 
 int /*<<< orphan*/  ISO_VD_END ; 
 int /*<<< orphan*/  ISO_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5(void *pd)
{
  iso_volume_descriptor_t ied;

  FUNC0 (sizeof(iso_volume_descriptor_t) == ISO_BLOCKSIZE);

  FUNC0 (pd != NULL);

  FUNC3(&ied, 0, sizeof(ied));

  ied.type = FUNC4(ISO_VD_END);
  FUNC1 (ied.id, ISO_STANDARD_ID, sizeof(ied.id),
                       ISO9660_DCHARS);
  ied.version = FUNC4(ISO_VERSION);

  FUNC2(pd, &ied, sizeof(ied));
}