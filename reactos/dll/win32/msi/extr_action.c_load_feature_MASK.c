#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_4__* feature; TYPE_3__* package; } ;
typedef  TYPE_1__ _ilfs ;
typedef  char WCHAR ;
typedef  scalar_t__ UINT ;
struct TYPE_14__ {void* Feature; int /*<<< orphan*/  entry; void* ActionRequest; void* Action; void* Installed; void* Attributes; void* Directory; void* Level; void* Display; void* Description; void* Title; void* Feature_Parent; int /*<<< orphan*/  Components; int /*<<< orphan*/  Children; } ;
struct TYPE_13__ {int /*<<< orphan*/  db; int /*<<< orphan*/  features; } ;
struct TYPE_12__ {int /*<<< orphan*/  hdr; } ;
typedef  int /*<<< orphan*/  MSIRECORD ;
typedef  TYPE_2__ MSIQUERY ;
typedef  TYPE_3__ MSIPACKAGE ;
typedef  TYPE_4__ MSIFEATURE ;
typedef  TYPE_3__* LPVOID ;

/* Variables and functions */
 scalar_t__ ERROR_NOT_ENOUGH_MEMORY ; 
 scalar_t__ ERROR_SUCCESS ; 
 void* INSTALLSTATE_UNKNOWN ; 
 scalar_t__ FUNC0 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,TYPE_2__**,char const*,void*) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  iterate_load_featurecomponents ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC8 (int) ; 
 void* FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static UINT FUNC11(MSIRECORD * row, LPVOID param)
{
    static const WCHAR query[] = {
        'S','E','L','E','C','T',' ','`','C','o','m','p','o','n','e','n','t','_','`',
         ' ','F','R','O','M',' ','`','F','e','a','t','u','r','e',
         'C','o','m','p','o','n','e','n','t','s','`',' ','W','H','E','R','E',' ',
         '`','F','e', 'a','t','u','r','e','_','`',' ','=','\'','%','s','\'',0};
    MSIPACKAGE *package = param;
    MSIFEATURE *feature;
    MSIQUERY *view;
    _ilfs ilfs;
    UINT rc;

    /* fill in the data */

    feature = FUNC8( sizeof (MSIFEATURE) );
    if (!feature)
        return ERROR_NOT_ENOUGH_MEMORY;

    FUNC7( &feature->Children );
    FUNC7( &feature->Components );
    
    feature->Feature = FUNC9( row, 1 );

    FUNC4("Loading feature %s\n",FUNC5(feature->Feature));

    feature->Feature_Parent = FUNC9( row, 2 );
    feature->Title = FUNC9( row, 3 );
    feature->Description = FUNC9( row, 4 );

    if (!FUNC3(row,5))
        feature->Display = FUNC2(row,5);
  
    feature->Level= FUNC2(row,6);
    feature->Directory = FUNC9( row, 7 );
    feature->Attributes = FUNC2(row,8);

    feature->Installed = INSTALLSTATE_UNKNOWN;
    feature->Action = INSTALLSTATE_UNKNOWN;
    feature->ActionRequest = INSTALLSTATE_UNKNOWN;

    FUNC6( &package->features, &feature->entry );

    /* load feature components */

    rc = FUNC1( package->db, &view, query, feature->Feature );
    if (rc != ERROR_SUCCESS)
        return ERROR_SUCCESS;

    ilfs.package = package;
    ilfs.feature = feature;

    rc = FUNC0(view, NULL, iterate_load_featurecomponents , &ilfs);
    FUNC10(&view->hdr);
    return rc;
}