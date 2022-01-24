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
struct TYPE_2__ {scalar_t__ free_space; int /*<<< orphan*/  signature; } ;
struct chmcPmgiChunk {int /*<<< orphan*/  data; TYPE_1__ header; } ;
struct chmcPmgiChunkNode {struct chmcPmgiChunk chunk; scalar_t__ index_len; scalar_t__ data_len; } ;

/* Variables and functions */
 scalar_t__ CHMC_PMGI_DATA_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct chmcPmgiChunkNode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC3(struct chmcPmgiChunkNode *node)
{
	struct chmcPmgiChunk *chunk;

	FUNC0(node);

	node->data_len = 0;
	node->index_len = 0;

	chunk = &node->chunk;

	FUNC1(chunk->header.signature, "PMGI", 4);

	// FIXME check it is the right len
	chunk->header.free_space = CHMC_PMGI_DATA_LEN + 2;
	//  chunk->header.unknown_0008 = 0;
	//  chunk->header.block_prev = -1;
	//  chunk->header.block_next = -1;

	FUNC2(chunk->data, 0, CHMC_PMGI_DATA_LEN);
}