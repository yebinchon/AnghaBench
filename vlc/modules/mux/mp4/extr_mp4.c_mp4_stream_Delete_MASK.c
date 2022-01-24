#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_3__* p_first; } ;
struct TYPE_7__ {TYPE_3__* p_first; } ;
struct TYPE_9__ {struct TYPE_9__* p_indexentries; TYPE_2__ towrite; int /*<<< orphan*/  p_block; struct TYPE_9__* p_next; TYPE_1__ read; struct TYPE_9__* p_held_entry; scalar_t__ extrabuilder; } ;
typedef  TYPE_3__ mp4_stream_t ;
typedef  TYPE_3__ mp4_fragentry_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static void FUNC3(mp4_stream_t *p_stream)
{
    if(p_stream->extrabuilder)
        FUNC2(p_stream->extrabuilder);

    /* mp4 frag */
    if (p_stream->p_held_entry)
    {
        FUNC0(p_stream->p_held_entry->p_block);
        FUNC1(p_stream->p_held_entry);
    }
    while(p_stream->read.p_first)
    {
        mp4_fragentry_t *p_next = p_stream->read.p_first->p_next;
        FUNC0(p_stream->read.p_first->p_block);
        FUNC1(p_stream->read.p_first);
        p_stream->read.p_first = p_next;
    }
    while(p_stream->towrite.p_first)
    {
        mp4_fragentry_t *p_next = p_stream->towrite.p_first->p_next;
        FUNC0(p_stream->towrite.p_first->p_block);
        FUNC1(p_stream->towrite.p_first);
        p_stream->towrite.p_first = p_next;
    }
    FUNC1(p_stream->p_indexentries);

    FUNC1(p_stream);
}