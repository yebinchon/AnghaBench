#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {size_t maxcount; int /*<<< orphan*/  codepage; TYPE_1__* strings; } ;
typedef  TYPE_2__ string_table ;
typedef  size_t UINT ;
struct TYPE_4__ {scalar_t__ len; scalar_t__ data; scalar_t__ persistent_refcount; scalar_t__ nonpersistent_refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,size_t,...) ; 
 size_t FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC4( const string_table *st, UINT *datasize, UINT *poolsize )
{
    UINT i, len, holesize;

    if( st->strings[0].data || st->strings[0].persistent_refcount || st->strings[0].nonpersistent_refcount)
        FUNC0("oops. element 0 has a string\n");

    *poolsize = 4;
    *datasize = 0;
    holesize = 0;
    for( i=1; i<st->maxcount; i++ )
    {
        if( !st->strings[i].persistent_refcount )
        {
            FUNC1("[%u] nonpersistent = %s\n", i, FUNC3(st->strings[i].data, st->strings[i].len));
            (*poolsize) += 4;
        }
        else if( st->strings[i].data )
        {
            FUNC1("[%u] = %s\n", i, FUNC3(st->strings[i].data, st->strings[i].len));
            len = FUNC2( st->codepage, 0, st->strings[i].data, st->strings[i].len + 1,
                                       NULL, 0, NULL, NULL);
            if( len )
                len--;
            (*datasize) += len;
            if (len>0xffff)
                (*poolsize) += 4;
            (*poolsize) += holesize + 4;
            holesize = 0;
        }
        else
            holesize += 4;
    }
    FUNC1("data %u pool %u codepage %x\n", *datasize, *poolsize, st->codepage );
}