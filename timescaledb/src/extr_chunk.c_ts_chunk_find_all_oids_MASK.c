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
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  LOCKMODE ;
typedef  int /*<<< orphan*/  Hyperspace ;

/* Variables and functions */
 int /*<<< orphan*/  append_chunk_oid ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

List *
FUNC1(Hyperspace *hs, List *dimension_vecs, LOCKMODE lockmode)
{
	return FUNC0(hs, dimension_vecs, append_chunk_oid, lockmode, NULL);
}