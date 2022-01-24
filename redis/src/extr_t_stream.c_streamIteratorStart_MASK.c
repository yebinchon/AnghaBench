#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int rev; int /*<<< orphan*/ * lp_ele; int /*<<< orphan*/ * lp; TYPE_3__* stream; int /*<<< orphan*/  ri; void** end_key; void** start_key; } ;
typedef  TYPE_1__ streamIterator ;
struct TYPE_10__ {scalar_t__ seq; scalar_t__ ms; } ;
typedef  TYPE_2__ streamID ;
struct TYPE_11__ {int /*<<< orphan*/  rax; } ;
typedef  TYPE_3__ stream ;

/* Variables and functions */
 void* UINT64_MAX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void**,TYPE_2__*) ; 

void FUNC4(streamIterator *si, stream *s, streamID *start, streamID *end, int rev) {
    /* Initialize the iterator and translates the iteration start/stop
     * elements into a 128 big big-endian number. */
    if (start) {
        FUNC3(si->start_key,start);
    } else {
        si->start_key[0] = 0;
        si->start_key[1] = 0;
    }

    if (end) {
        FUNC3(si->end_key,end);
    } else {
        si->end_key[0] = UINT64_MAX;
        si->end_key[1] = UINT64_MAX;
    }

    /* Seek the correct node in the radix tree. */
    FUNC2(&si->ri,s->rax);
    if (!rev) {
        if (start && (start->ms || start->seq)) {
            FUNC1(&si->ri,"<=",(unsigned char*)si->start_key,
                    sizeof(si->start_key));
            if (FUNC0(&si->ri)) FUNC1(&si->ri,"^",NULL,0);
        } else {
            FUNC1(&si->ri,"^",NULL,0);
        }
    } else {
        if (end && (end->ms || end->seq)) {
            FUNC1(&si->ri,"<=",(unsigned char*)si->end_key,
                    sizeof(si->end_key));
            if (FUNC0(&si->ri)) FUNC1(&si->ri,"$",NULL,0);
        } else {
            FUNC1(&si->ri,"$",NULL,0);
        }
    }
    si->stream = s;
    si->lp = NULL; /* There is no current listpack right now. */
    si->lp_ele = NULL; /* Current listpack cursor. */
    si->rev = rev;  /* Direction, if non-zero reversed, from end to start. */
}