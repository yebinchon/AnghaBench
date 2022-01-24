#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct table {size_t data; size_t num_rows; } ;
struct record_ip4routetable {void* nexthop; int /*<<< orphan*/  interfaceindex; void* destination; } ;
struct expr {int dummy; } ;
typedef  enum fill_status { ____Placeholder_fill_status } fill_status ;
typedef  size_t UINT ;
struct TYPE_7__ {size_t dwNumEntries; TYPE_1__* table; } ;
struct TYPE_6__ {int /*<<< orphan*/  dwForwardNextHop; int /*<<< orphan*/  dwForwardIfIndex; int /*<<< orphan*/  dwForwardDest; } ;
typedef  TYPE_2__ MIB_IPFORWARDTABLE ;

/* Variables and functions */
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ; 
 int FILL_STATUS_FAILED ; 
 int FILL_STATUS_UNFILTERED ; 
 scalar_t__ FUNC0 (TYPE_2__*,size_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (struct table*,size_t) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (struct table*,size_t,struct expr const*,int*) ; 
 int /*<<< orphan*/  FUNC7 (size_t,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct table*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static enum fill_status FUNC10( struct table *table, const struct expr *cond )
{
    struct record_ip4routetable *rec;
    UINT i, row = 0, offset = 0, size = 0;
    MIB_IPFORWARDTABLE *forwards;
    enum fill_status status = FILL_STATUS_UNFILTERED;

    if (FUNC0( NULL, &size, TRUE ) != ERROR_INSUFFICIENT_BUFFER) return FILL_STATUS_FAILED;
    if (!(forwards = FUNC4( size ))) return FILL_STATUS_FAILED;
    if (FUNC0( forwards, &size, TRUE ))
    {
        FUNC5( forwards );
        return FILL_STATUS_FAILED;
    }
    if (!FUNC9( table, FUNC7(forwards->dwNumEntries, 1), sizeof(*rec) ))
    {
        FUNC5( forwards );
        return FILL_STATUS_FAILED;
    }

    for (i = 0; i < forwards->dwNumEntries; i++)
    {
        rec = (struct record_ip4routetable *)(table->data + offset);

        rec->destination    = FUNC3( FUNC8(forwards->table[i].dwForwardDest) );
        rec->interfaceindex = forwards->table[i].dwForwardIfIndex;
        rec->nexthop        = FUNC3( FUNC8(forwards->table[i].dwForwardNextHop) );

        if (!FUNC6( table, row, cond, &status ))
        {
            FUNC2( table, row );
            continue;
        }
        offset += sizeof(*rec);
        row++;
    }
    FUNC1("created %u rows\n", row);
    table->num_rows = row;

    FUNC5( forwards );
    return status;
}