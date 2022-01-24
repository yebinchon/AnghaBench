#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
typedef  scalar_t__ UINT ;
struct TYPE_13__ {int /*<<< orphan*/  hdr; } ;
struct TYPE_12__ {int /*<<< orphan*/  hdr; } ;
typedef  TYPE_1__ MSIRECORD ;
typedef  TYPE_2__ MSIQUERY ;
typedef  int /*<<< orphan*/  MSIDATABASE ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 TYPE_1__* FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char const*,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (TYPE_2__*,TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_2__*,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

UINT FUNC9( MSIDATABASE *db )
{
    static const WCHAR query_select[] = {
        'S','E','L','E','C','T',' ','*',' ','F','R','O','M',' ',
        '`','P','r','o','p','e','r','t','y','`',0};
    static const WCHAR query_insert[] = {
        'I','N','S','E','R','T',' ','I','N','T','O',' ',
        '`','_','P','r','o','p','e','r','t','y','`',' ',
        '(','`','_','P','r','o','p','e','r','t','y','`',',','`','V','a','l','u','e','`',')',' ',
        'V','A','L','U','E','S',' ','(','?',',','?',')',0};
    static const WCHAR query_update[] = {
        'U','P','D','A','T','E',' ','`','_','P','r','o','p','e','r','t','y','`',' ',
        'S','E','T',' ','`','V','a','l','u','e','`',' ','=',' ','?',' ',
        'W','H','E','R','E',' ','`','_','P','r','o','p','e','r','t','y','`',' ','=',' ','?',0};
    MSIQUERY *view_select;
    UINT rc;

    rc = FUNC1( db, query_select, &view_select );
    if (rc != ERROR_SUCCESS)
        return rc;

    rc = FUNC4( view_select, 0 );
    if (rc != ERROR_SUCCESS)
    {
        FUNC3( view_select );
        FUNC8( &view_select->hdr );
        return rc;
    }

    while (1)
    {
        MSIQUERY *view_insert, *view_update;
        MSIRECORD *rec_select;

        rc = FUNC5( view_select, &rec_select );
        if (rc != ERROR_SUCCESS)
            break;

        rc = FUNC1( db, query_insert, &view_insert );
        if (rc != ERROR_SUCCESS)
        {
            FUNC8( &rec_select->hdr );
            continue;
        }

        rc = FUNC4( view_insert, rec_select );
        FUNC3( view_insert );
        FUNC8( &view_insert->hdr );
        if (rc != ERROR_SUCCESS)
        {
            MSIRECORD *rec_update;

            FUNC6("insert failed, trying update\n");

            rc = FUNC1( db, query_update, &view_update );
            if (rc != ERROR_SUCCESS)
            {
                FUNC7("open view failed %u\n", rc);
                FUNC8( &rec_select->hdr );
                continue;
            }

            rec_update = FUNC0( 2 );
            FUNC2( rec_select, 1, rec_update, 2 );
            FUNC2( rec_select, 2, rec_update, 1 );
            rc = FUNC4( view_update, rec_update );
            if (rc != ERROR_SUCCESS)
                FUNC7("update failed %u\n", rc);

            FUNC3( view_update );
            FUNC8( &view_update->hdr );
            FUNC8( &rec_update->hdr );
        }

        FUNC8( &rec_select->hdr );
    }

    FUNC3( view_select );
    FUNC8( &view_select->hdr );
    return rc;
}