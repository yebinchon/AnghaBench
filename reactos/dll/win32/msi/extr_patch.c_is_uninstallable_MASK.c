#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
struct TYPE_9__ {int /*<<< orphan*/  hdr; } ;
struct TYPE_8__ {int /*<<< orphan*/  hdr; } ;
typedef  TYPE_1__ MSIRECORD ;
typedef  TYPE_2__ MSIQUERY ;
typedef  int /*<<< orphan*/  MSIDATABASE ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char const*,TYPE_2__**) ; 
 char* FUNC2 (TYPE_1__*,int) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_2__*,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static DWORD FUNC7( MSIDATABASE *db )
{
    static const WCHAR query[] = {
        'S','E','L','E','C','T',' ','`','V','a','l','u','e','`',' ','F','R','O','M',' ',
        '`','M','s','i','P','a','t','c','h','M','e','t','a','d','a','t','a','`',' ',
        'W','H','E','R','E',' ','`','C','o','m','p','a','n','y','`',' ','I','S',' ',
        'N','U','L','L',' ','A','N','D',' ','`','P','r','o','p','e','r','t','y','`','=',
        '\'','A','l','l','o','w','R','e','m','o','v','a','l','\'',0};
    MSIQUERY *view;
    MSIRECORD *rec;
    DWORD ret = 0;

    if (FUNC1( db, query, &view ) != ERROR_SUCCESS) return 0;
    if (FUNC3( view, 0 ) != ERROR_SUCCESS)
    {
        FUNC6( &view->hdr );
        return 0;
    }

    if (FUNC4( view, &rec ) == ERROR_SUCCESS)
    {
        const WCHAR *value = FUNC2( rec, 1 );
        ret = FUNC5( value );
        FUNC6( &rec->hdr );
    }

    FUNC0( "check other criteria\n" );

    FUNC6( &view->hdr );
    return ret;
}