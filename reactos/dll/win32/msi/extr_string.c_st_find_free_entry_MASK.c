#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct msistring {scalar_t__ nonpersistent_refcount; scalar_t__ persistent_refcount; } ;
struct TYPE_4__ {int freeslot; size_t maxcount; size_t* sorted; struct msistring* strings; } ;
typedef  TYPE_1__ string_table ;
typedef  size_t UINT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct msistring*) ; 
 size_t* FUNC3 (size_t*,size_t) ; 
 struct msistring* FUNC4 (struct msistring*,size_t) ; 

__attribute__((used)) static int FUNC5( string_table *st )
{
    UINT i, sz, *s;
    struct msistring *p;

    FUNC1("%p\n", st);

    if( st->freeslot )
    {
        for( i = st->freeslot; i < st->maxcount; i++ )
            if( !st->strings[i].persistent_refcount &&
                !st->strings[i].nonpersistent_refcount )
                return i;
    }
    for( i = 1; i < st->maxcount; i++ )
        if( !st->strings[i].persistent_refcount &&
            !st->strings[i].nonpersistent_refcount )
            return i;

    /* dynamically resize */
    sz = st->maxcount + 1 + st->maxcount/2;
    p = FUNC4( st->strings, sz * sizeof(struct msistring) );
    if( !p )
        return -1;

    s = FUNC3( st->sorted, sz*sizeof(UINT) );
    if( !s )
    {
        FUNC2( p );
        return -1;
    }

    st->strings = p;
    st->sorted = s;

    st->freeslot = st->maxcount;
    st->maxcount = sz;
    if( st->strings[st->freeslot].persistent_refcount ||
        st->strings[st->freeslot].nonpersistent_refcount )
        FUNC0("oops. expected freeslot to be free...\n");
    return st->freeslot;
}