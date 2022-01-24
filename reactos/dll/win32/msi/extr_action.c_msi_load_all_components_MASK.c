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
typedef  scalar_t__ UINT ;
struct TYPE_9__ {int /*<<< orphan*/  db; int /*<<< orphan*/  components; } ;
struct TYPE_8__ {int /*<<< orphan*/  hdr; } ;
typedef  TYPE_1__ MSIQUERY ;
typedef  TYPE_2__ MSIPACKAGE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ ERROR_FUNCTION_FAILED ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char const*,TYPE_1__**) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  load_component ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

UINT FUNC6( MSIPACKAGE *package )
{
    static const WCHAR query[] = {
        'S','E','L','E','C','T',' ','*',' ','F','R','O','M',' ',
        '`','C','o','m','p','o','n','e','n','t','`',0};
    MSIQUERY *view;
    UINT r;

    if (!FUNC3(&package->components))
        return ERROR_SUCCESS;

    r = FUNC1( package->db, query, &view );
    if (r != ERROR_SUCCESS)
        return r;

    if (!FUNC4( package ))
    {
        FUNC0("can't initialize assembly caches\n");
        FUNC5( &view->hdr );
        return ERROR_FUNCTION_FAILED;
    }

    r = FUNC2(view, NULL, load_component, package);
    FUNC5(&view->hdr);
    return r;
}