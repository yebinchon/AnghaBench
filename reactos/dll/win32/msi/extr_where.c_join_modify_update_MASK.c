#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct tagMSIVIEW {int dummy; } ;
typedef  scalar_t__ UINT ;
struct TYPE_12__ {int /*<<< orphan*/  hdr; } ;
struct TYPE_11__ {int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ MSIWHEREVIEW ;
typedef  TYPE_2__ MSIRECORD ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC2 (struct tagMSIVIEW*,scalar_t__,TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (TYPE_1__*,TYPE_2__*,scalar_t__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,struct tagMSIVIEW*,scalar_t__,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static UINT FUNC7( struct tagMSIVIEW *view, MSIRECORD *rec )
{
    MSIWHEREVIEW *wv = (MSIWHEREVIEW *)view;
    UINT r, row, i, mask = 0;
    MSIRECORD *current;


    r = FUNC4( wv, rec, &row );
    if (r != ERROR_SUCCESS)
        return r;

    r = FUNC5( wv->db, view, row, &current );
    if (r != ERROR_SUCCESS)
        return r;

    FUNC3(FUNC0(rec) == FUNC0(current));

    for (i = FUNC0(rec); i > 0; i--)
    {
        if (!FUNC1(rec, current, i))
            mask |= 1 << (i - 1);
    }
     FUNC6(&current->hdr);

    return FUNC2( view, row, rec, mask );
}