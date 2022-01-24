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
struct TYPE_5__ {size_t offset; size_t litLength; size_t matchLength; } ;
typedef  TYPE_1__ seq_t ;
struct TYPE_6__ {size_t prevOffset; int /*<<< orphan*/  const* dumps; int /*<<< orphan*/  DStream; int /*<<< orphan*/  stateML; int /*<<< orphan*/  stateOffb; int /*<<< orphan*/  stateLL; int /*<<< orphan*/  const* dumpsEnd; } ;
typedef  TYPE_2__ seqState_t ;
typedef  int /*<<< orphan*/  offset ;
typedef  int U32 ;
typedef  int /*<<< orphan*/  const BYTE ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ MINMATCH ; 
 size_t MaxLL ; 
 size_t MaxML ; 
 scalar_t__ FUNC3 () ; 
 size_t FUNC4 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void FUNC5(seq_t* seq, seqState_t* seqState)
{
    size_t litLength;
    size_t prevOffset;
    size_t offset;
    size_t matchLength;
    const BYTE* dumps = seqState->dumps;
    const BYTE* const de = seqState->dumpsEnd;

    /* Literal length */
    litLength = FUNC0(&(seqState->stateLL), &(seqState->DStream));
    prevOffset = litLength ? seq->offset : seqState->prevOffset;
    seqState->prevOffset = seq->offset;
    if (litLength == MaxLL)
    {
        const U32 add = dumps<de ? *dumps++ : 0;
        if (add < 255) litLength += add;
        else
        {
            if (dumps<=(de-3))
            {
                litLength = FUNC4(dumps);
                dumps += 3;
            }
        }
    }

    /* Offset */
    {
        U32 offsetCode, nbBits;
        offsetCode = FUNC0(&(seqState->stateOffb), &(seqState->DStream));
        if (FUNC3()) FUNC2(&(seqState->DStream));
        nbBits = offsetCode - 1;
        if (offsetCode==0) nbBits = 0;   /* cmove */
        offset = ((size_t)1 << (nbBits & ((sizeof(offset)*8)-1))) + FUNC1(&(seqState->DStream), nbBits);
        if (FUNC3()) FUNC2(&(seqState->DStream));
        if (offsetCode==0) offset = prevOffset;
    }

    /* MatchLength */
    matchLength = FUNC0(&(seqState->stateML), &(seqState->DStream));
    if (matchLength == MaxML)
    {
        const U32 add = dumps<de ? *dumps++ : 0;
        if (add < 255) matchLength += add;
        else
        {
            if (dumps<=(de-3))
            {
                matchLength = FUNC4(dumps);
                dumps += 3;
            }
        }
    }
    matchLength += MINMATCH;

    /* save result */
    seq->litLength = litLength;
    seq->offset = offset;
    seq->matchLength = matchLength;
    seqState->dumps = dumps;
}