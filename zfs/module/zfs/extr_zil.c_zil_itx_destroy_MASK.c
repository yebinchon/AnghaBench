#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ lrc_txtype; } ;
struct TYPE_6__ {int /*<<< orphan*/  itx_size; int /*<<< orphan*/  itx_callback_data; int /*<<< orphan*/  (* itx_callback ) (int /*<<< orphan*/ ) ;TYPE_1__ itx_lr; } ;
typedef  TYPE_2__ itx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 scalar_t__ TX_COMMIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 

void
FUNC3(itx_t *itx)
{
	FUNC0(itx->itx_lr.lrc_txtype == TX_COMMIT, itx->itx_callback == NULL);
	FUNC0(itx->itx_callback != NULL, itx->itx_lr.lrc_txtype != TX_COMMIT);

	if (itx->itx_callback != NULL)
		itx->itx_callback(itx->itx_callback_data);

	FUNC2(itx, itx->itx_size);
}