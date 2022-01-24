#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_17__ {int Attributes; int IsCompressed; int /*<<< orphan*/  entry; void* Sequence; struct TYPE_17__* File; int /*<<< orphan*/  state; void* Language; void* Version; void* FileSize; void* ShortName; int /*<<< orphan*/  LongName; void* FileName; int /*<<< orphan*/  Component; } ;
struct TYPE_16__ {int WordCount; int /*<<< orphan*/  files; } ;
typedef  int /*<<< orphan*/  MSIRECORD ;
typedef  TYPE_1__ MSIPACKAGE ;
typedef  TYPE_2__ MSIFILE ;
typedef  TYPE_1__* LPVOID ;
typedef  TYPE_2__* LPCWSTR ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_NOT_ENOUGH_MEMORY ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 void* FALSE ; 
 void* FUNC0 (int /*<<< orphan*/ *,int) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,void*) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (void*,char) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,TYPE_2__*) ; 
 TYPE_2__* FUNC9 (int) ; 
 void* FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (void*) ; 
 int msidbFileAttributesCompressed ; 
 int msidbFileAttributesNoncompressed ; 
 int msidbFileAttributesPatchAdded ; 
 int msidbSumInfoSourceTypeAdminImage ; 
 int msidbSumInfoSourceTypeCompressed ; 
 int /*<<< orphan*/  msifs_invalid ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static UINT FUNC15(MSIRECORD *row, LPVOID param)
{
    MSIPACKAGE* package = param;
    LPCWSTR component;
    MSIFILE *file;

    /* fill in the data */

    file = FUNC9( sizeof (MSIFILE) );
    if (!file)
        return ERROR_NOT_ENOUGH_MEMORY;
 
    file->File = FUNC10( row, 1 );

    component = FUNC1( row, 2 );
    file->Component = FUNC12( package, component );

    if (!file->Component)
    {
        FUNC3("Component not found: %s\n", FUNC4(component));
        FUNC11(file->File);
        FUNC11(file);
        return ERROR_SUCCESS;
    }

    file->FileName = FUNC10( row, 3 );
    FUNC13( file->FileName );

    file->ShortName = FUNC10( row, 3 );
    file->LongName = FUNC14( FUNC5(file->ShortName, '|'));
    
    file->FileSize = FUNC0( row, 4 );
    file->Version = FUNC10( row, 5 );
    file->Language = FUNC10( row, 6 );
    file->Attributes = FUNC0( row, 7 );
    file->Sequence = FUNC0( row, 8 );

    file->state = msifs_invalid;

    /* if the compressed bits are not set in the file attributes,
     * then read the information from the package word count property
     */
    if (package->WordCount & msidbSumInfoSourceTypeAdminImage)
    {
        file->IsCompressed = FALSE;
    }
    else if (file->Attributes &
             (msidbFileAttributesCompressed | msidbFileAttributesPatchAdded))
    {
        file->IsCompressed = TRUE;
    }
    else if (file->Attributes & msidbFileAttributesNoncompressed)
    {
        file->IsCompressed = FALSE;
    }
    else
    {
        file->IsCompressed = package->WordCount & msidbSumInfoSourceTypeCompressed;
    }

    FUNC8(package, file);
    FUNC7(package, file);

    FUNC2("File loaded (file %s sequence %u)\n", FUNC4(file->File), file->Sequence);

    FUNC6( &package->files, &file->entry );
 
    return ERROR_SUCCESS;
}