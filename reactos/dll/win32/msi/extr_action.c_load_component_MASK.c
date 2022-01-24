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
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_9__ {int /*<<< orphan*/  assembly; void* ActionRequest; void* Action; void* Installed; void* KeyPath; void* Condition; int /*<<< orphan*/  Attributes; void* Directory; void* ComponentId; void* Component; int /*<<< orphan*/  entry; } ;
struct TYPE_8__ {int /*<<< orphan*/  components; } ;
typedef  int /*<<< orphan*/  MSIRECORD ;
typedef  TYPE_1__ MSIPACKAGE ;
typedef  TYPE_2__ MSICOMPONENT ;
typedef  TYPE_1__* LPVOID ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_FUNCTION_FAILED ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 void* INSTALLSTATE_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC4 (int) ; 
 void* FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_2__*) ; 

__attribute__((used)) static UINT FUNC7( MSIRECORD *row, LPVOID param )
{
    MSIPACKAGE *package = param;
    MSICOMPONENT *comp;

    comp = FUNC4( sizeof(MSICOMPONENT) );
    if (!comp)
        return ERROR_FUNCTION_FAILED;

    FUNC3( &package->components, &comp->entry );

    /* fill in the data */
    comp->Component = FUNC5( row, 1 );

    FUNC1("Loading Component %s\n", FUNC2(comp->Component));

    comp->ComponentId = FUNC5( row, 2 );
    comp->Directory = FUNC5( row, 3 );
    comp->Attributes = FUNC0(row,4);
    comp->Condition = FUNC5( row, 5 );
    comp->KeyPath = FUNC5( row, 6 );

    comp->Installed = INSTALLSTATE_UNKNOWN;
    comp->Action = INSTALLSTATE_UNKNOWN;
    comp->ActionRequest = INSTALLSTATE_UNKNOWN;

    comp->assembly = FUNC6( package, comp );
    return ERROR_SUCCESS;
}