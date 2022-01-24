#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * cube; int /*<<< orphan*/ * constraints; } ;
typedef  TYPE_1__ Chunk ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_1__*,int) ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 

Chunk *
FUNC4(Chunk *chunk)
{
	Chunk *copy;

	copy = FUNC1(sizeof(Chunk));
	FUNC0(copy, chunk, sizeof(Chunk));

	if (NULL != chunk->constraints)
		copy->constraints = FUNC2(chunk->constraints);

	if (NULL != chunk->cube)
		copy->cube = FUNC3(chunk->cube);

	return copy;
}