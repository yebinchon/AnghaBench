#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT ;
struct TYPE_3__ {int num_streams_allocated; int /*<<< orphan*/ * streams; } ;
typedef  int /*<<< orphan*/  MSISTREAM ;
typedef  TYPE_1__ MSIDATABASE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static BOOL FUNC2( MSIDATABASE *db, UINT size )
{
    if (!db->num_streams_allocated)
    {
        if (!(db->streams = FUNC0( size * sizeof(MSISTREAM) ))) return FALSE;
        db->num_streams_allocated = size;
        return TRUE;
    }
    while (size >= db->num_streams_allocated)
    {
        MSISTREAM *tmp;
        UINT new_size = db->num_streams_allocated * 2;
        if (!(tmp = FUNC1( db->streams, new_size * sizeof(MSISTREAM) ))) return FALSE;
        db->streams = tmp;
        db->num_streams_allocated = new_size;
    }
    return TRUE;
}