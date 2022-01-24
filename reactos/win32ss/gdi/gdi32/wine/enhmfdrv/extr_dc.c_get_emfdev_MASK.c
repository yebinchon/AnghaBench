#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/ * PHYSDEV ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EMFDRV_PDEVICE ; 
 int /*<<< orphan*/  pathdev ; 

__attribute__((used)) static inline PHYSDEV FUNC1( PHYSDEV path )
{
    return &FUNC0( path, EMFDRV_PDEVICE, pathdev )->dev;
}