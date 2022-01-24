#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
struct TYPE_10__ {int /*<<< orphan*/  hdr; } ;
struct TYPE_9__ {int /*<<< orphan*/  hdr; } ;
typedef  TYPE_1__ MSIRECORD ;
typedef  TYPE_2__ MSIQUERY ;
typedef  int /*<<< orphan*/  MSIDATABASE ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char const*,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_2__*,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static WCHAR *FUNC7( MSIDATABASE *db )
{
    static const WCHAR query[] = {
        'S','E','L','E','C','T',' ','`','V','a','l','u','e','`',' ',
        'F','R','O','M',' ','`','P','r','o','p','e','r','t','y','`',' ',
        'W','H','E','R','E',' ','`','P','r','o','p','e','r','t','y','`','=',
        '\'','P','r','o','d','u','c','t','C','o','d','e','\'',0};
    MSIQUERY *view;
    MSIRECORD *rec;
    WCHAR *ret = NULL;

    if (FUNC0( db, query, &view ) != ERROR_SUCCESS)
    {
        return NULL;
    }
    if (FUNC3( view, 0 ) != ERROR_SUCCESS)
    {
        FUNC2( view );
        FUNC5( &view->hdr );
        return NULL;
    }
    if (FUNC4( view, &rec ) == ERROR_SUCCESS)
    {
        ret = FUNC6( FUNC1( rec, 1 ) );
        FUNC5( &rec->hdr );
    }
    FUNC2( view );
    FUNC5( &view->hdr );
    return ret;
}