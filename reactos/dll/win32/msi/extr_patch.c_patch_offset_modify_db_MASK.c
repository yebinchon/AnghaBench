#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct patch_offset_list {scalar_t__ min; scalar_t__ max; } ;
typedef  char WCHAR ;
typedef  scalar_t__ UINT ;
struct TYPE_15__ {int /*<<< orphan*/  hdr; } ;
struct TYPE_14__ {int /*<<< orphan*/  hdr; } ;
typedef  TYPE_1__ MSIRECORD ;
typedef  TYPE_2__ MSIQUERY ;
typedef  int /*<<< orphan*/  MSIDATABASE ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 TYPE_1__* FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char const*,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,scalar_t__) ; 
 scalar_t__ FUNC3 (TYPE_2__*,TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_2__*,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,struct patch_offset_list*,TYPE_2__*,TYPE_1__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,struct patch_offset_list*,TYPE_2__*,TYPE_1__*) ; 

__attribute__((used)) static UINT FUNC8( MSIDATABASE *db, struct patch_offset_list *pos )
{
    static const WCHAR file_query[] = {
        'S','E','L','E','C','T',' ','*',' ','F','R','O','M',' ','`','F','i','l','e','`',' ',
        'W','H','E','R','E',' ','`','S','e','q','u','e','n','c','e','`',' ','>','=',' ','?',' ',
        'A','N','D',' ','`','S','e','q','u','e','n','c','e','`',' ','<','=',' ','?',' ',
        'O','R','D','E','R',' ','B','Y',' ','`','S','e','q','u','e','n','c','e','`',0};
    static const WCHAR patch_query[] = {
        'S','E','L','E','C','T',' ','*','F','R','O','M',' ','`','P','a','t','c','h','`',' ',
        'W','H','E','R','E',' ','`','S','e','q','u','e','n','c','e','`',' ','>','=',' ','?',' ',
        'A','N','D',' ','`','S','e','q','u','e','n','c','e','`',' ','<','=',' ','?',' ',
        'O','R','D','E','R',' ','B','Y',' ','`','S','e','q','u','e','n','c','e','`',0};
    MSIRECORD *rec;
    MSIQUERY *view;
    UINT r, min = pos->min, max = pos->max, r_fetch;

    r = FUNC1( db, file_query, &view );
    if (r != ERROR_SUCCESS)
        return ERROR_SUCCESS;

    rec = FUNC0( 2 );
    FUNC2( rec, 1, min );
    FUNC2( rec, 2, max );

    r = FUNC3( view, rec );
    FUNC5( &rec->hdr );
    if (r != ERROR_SUCCESS)
        goto done;

    while ((r_fetch = FUNC4( view, &rec )) == ERROR_SUCCESS)
    {
        r = FUNC6( db, pos, view, rec );
        FUNC5( &rec->hdr );
        if (r != ERROR_SUCCESS) goto done;
    }
    FUNC5( &view->hdr );

    r = FUNC1( db, patch_query, &view );
    if (r != ERROR_SUCCESS)
        return ERROR_SUCCESS;

    rec = FUNC0( 2 );
    FUNC2( rec, 1, min );
    FUNC2( rec, 2, max );

    r = FUNC3( view, rec );
    FUNC5( &rec->hdr );
    if (r != ERROR_SUCCESS)
        goto done;

    while ((r_fetch = FUNC4( view, &rec )) == ERROR_SUCCESS)
    {
        r = FUNC7( db, pos, view, rec );
        FUNC5( &rec->hdr );
        if (r != ERROR_SUCCESS) goto done;
    }

done:
    FUNC5( &view->hdr );
    return r;
}