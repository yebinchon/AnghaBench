#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  custom_private; } ;
struct TYPE_5__ {int /*<<< orphan*/ * methods; } ;
struct TYPE_6__ {int /*<<< orphan*/  varattno_map; int /*<<< orphan*/  reverse; int /*<<< orphan*/  chunk_relid; int /*<<< orphan*/  hypertable_id; TYPE_1__ csstate; } ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_2__ DecompressChunkState ;
typedef  TYPE_3__ CustomScan ;

/* Variables and functions */
 int /*<<< orphan*/  T_CustomScanState ; 
 int /*<<< orphan*/  decompress_chunk_state_methods ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ) ; 

Node *
FUNC6(CustomScan *cscan)
{
	DecompressChunkState *state;
	List *settings;

	state = (DecompressChunkState *) FUNC5(sizeof(DecompressChunkState), T_CustomScanState);

	state->csstate.methods = &decompress_chunk_state_methods;

	settings = FUNC0(cscan->custom_private);
	state->hypertable_id = FUNC1(settings);
	state->chunk_relid = FUNC3(settings);
	state->reverse = FUNC4(settings);
	state->varattno_map = FUNC2(cscan->custom_private);

	return (Node *) state;
}