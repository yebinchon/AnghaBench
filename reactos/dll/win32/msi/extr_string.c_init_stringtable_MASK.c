#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct msistring {int dummy; } ;
struct TYPE_5__ {int maxcount; int freeslot; scalar_t__ sortcount; int /*<<< orphan*/  codepage; struct TYPE_5__* strings; void* sorted; } ;
typedef  TYPE_1__ string_table ;
typedef  int /*<<< orphan*/  UINT ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static string_table *FUNC4( int entries, UINT codepage )
{
    string_table *st;

    if (!FUNC3( codepage ))
        return NULL;

    st = FUNC0( sizeof (string_table) );
    if( !st )
        return NULL;    
    if( entries < 1 )
        entries = 1;

    st->strings = FUNC1( sizeof(struct msistring) * entries );
    if( !st->strings )
    {
        FUNC2( st );
        return NULL;    
    }

    st->sorted = FUNC0( sizeof (UINT) * entries );
    if( !st->sorted )
    {
        FUNC2( st->strings );
        FUNC2( st );
        return NULL;
    }

    st->maxcount = entries;
    st->freeslot = 1;
    st->codepage = codepage;
    st->sortcount = 0;

    return st;
}