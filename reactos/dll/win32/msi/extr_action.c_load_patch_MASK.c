#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_13__ {int /*<<< orphan*/  File; } ;
struct TYPE_12__ {int /*<<< orphan*/  entry; void* Sequence; TYPE_4__* File; void* Attributes; void* PatchSize; } ;
struct TYPE_11__ {int /*<<< orphan*/  filepatches; } ;
typedef  int /*<<< orphan*/  MSIRECORD ;
typedef  TYPE_1__ MSIPACKAGE ;
typedef  TYPE_2__ MSIFILEPATCH ;
typedef  TYPE_1__* LPVOID ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  ERROR_FUNCTION_FAILED ; 
 int /*<<< orphan*/  ERROR_NOT_ENOUGH_MEMORY ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 void* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_2__*) ; 
 TYPE_2__* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 TYPE_4__* FUNC9 (TYPE_1__*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static UINT FUNC10(MSIRECORD *row, LPVOID param)
{
    MSIPACKAGE *package = param;
    MSIFILEPATCH *patch;
    const WCHAR *file_key;

    patch = FUNC7( sizeof (MSIFILEPATCH) );
    if (!patch)
        return ERROR_NOT_ENOUGH_MEMORY;

    file_key = FUNC2( row, 1 );
    patch->File = FUNC9( package, file_key );
    if (!patch->File)
    {
        FUNC0("Failed to find target for patch in File table\n");
        FUNC8(patch);
        return ERROR_FUNCTION_FAILED;
    }

    patch->Sequence = FUNC1( row, 2 );
    patch->PatchSize = FUNC1( row, 3 );
    patch->Attributes = FUNC1( row, 4 );

    /* FIXME:
     * Header field - for patch validation.
     * _StreamRef   - External key into MsiPatchHeaders (instead of the header field)
     */

    FUNC6( package, patch );

    FUNC3("Patch loaded (file %s sequence %u)\n", FUNC4(patch->File->File), patch->Sequence);

    FUNC5( &package->filepatches, &patch->entry );

    return ERROR_SUCCESS;
}