#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
typedef  scalar_t__ UINT ;
struct TYPE_12__ {int /*<<< orphan*/  db; } ;
struct TYPE_11__ {int /*<<< orphan*/  hdr; } ;
struct TYPE_10__ {int /*<<< orphan*/  hdr; } ;
typedef  TYPE_1__ MSIRECORD ;
typedef  TYPE_2__ MSIQUERY ;
typedef  TYPE_3__ MSIPACKAGE ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char const*,TYPE_2__**) ; 
 char* FUNC1 (TYPE_1__*,int) ; 
 scalar_t__ FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_2__*,TYPE_1__**) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  szPatch ; 

__attribute__((used)) static UINT FUNC8( MSIPACKAGE *package )
{
    static const WCHAR query[] = {
        'S','E','L','E','C','T',' ','`','S','o','u','r','c','e','`',' ','F','R','O','M',' ',
        '`','M','e','d','i','a','`',' ','W','H','E','R','E',' ','`','S','o','u','r','c','e','`',' ',
        'I','S',' ','N','O','T',' ','N','U','L','L',0};
    MSIQUERY *view;
    MSIRECORD *rec;
    const WCHAR *property;
    WCHAR *patch;
    UINT r;

    r = FUNC0( package->db, query, &view );
    if (r != ERROR_SUCCESS)
        return r;

    r = FUNC2( view, 0 );
    if (r != ERROR_SUCCESS)
        goto done;

    if (FUNC3( view, &rec ) == ERROR_SUCCESS)
    {
        property = FUNC1( rec, 1 );
        patch = FUNC4( package->db, szPatch );
        FUNC6( package->db, property, patch, -1 );
        FUNC5( patch );
        FUNC7( &rec->hdr );
    }

done:
    FUNC7( &view->hdr );
    return r;
}