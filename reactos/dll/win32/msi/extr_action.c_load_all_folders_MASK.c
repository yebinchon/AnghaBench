#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
typedef  scalar_t__ UINT ;
struct TYPE_8__ {int /*<<< orphan*/  db; int /*<<< orphan*/  folders; } ;
struct TYPE_7__ {int /*<<< orphan*/  hdr; } ;
typedef  TYPE_1__ MSIQUERY ;
typedef  TYPE_2__ MSIPACKAGE ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char const*,TYPE_1__**) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  find_folder_children ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  load_folder ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static UINT FUNC4( MSIPACKAGE *package )
{
    static const WCHAR query[] = {
        'S','E','L','E','C','T',' ','*',' ','F','R','O','M',' ',
        '`','D','i','r','e','c','t','o','r','y','`',0};
    MSIQUERY *view;
    UINT r;

    if (!FUNC2(&package->folders))
        return ERROR_SUCCESS;

    r = FUNC0( package->db, query, &view );
    if (r != ERROR_SUCCESS)
        return r;

    r = FUNC1( view, NULL, load_folder, package );
    if (r != ERROR_SUCCESS)
    {
        FUNC3( &view->hdr );
        return r;
    }
    r = FUNC1( view, NULL, find_folder_children, package );
    FUNC3( &view->hdr );
    return r;
}