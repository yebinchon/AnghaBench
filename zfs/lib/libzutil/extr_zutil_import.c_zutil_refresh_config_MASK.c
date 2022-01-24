#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nvlist_t ;
struct TYPE_5__ {int /*<<< orphan*/  lpc_lib_handle; TYPE_1__* lpc_ops; } ;
typedef  TYPE_2__ libpc_handle_t ;
struct TYPE_4__ {int /*<<< orphan*/ * (* pco_refresh_config ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static nvlist_t *
FUNC2(libpc_handle_t *hdl, nvlist_t *tryconfig)
{
	FUNC0(hdl->lpc_ops->pco_refresh_config != NULL);

	return (hdl->lpc_ops->pco_refresh_config(hdl->lpc_lib_handle,
	    tryconfig));
}