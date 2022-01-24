#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_13__ {int /*<<< orphan*/  hdr; } ;
typedef  TYPE_1__ MSIRECORD ;
typedef  int /*<<< orphan*/  MSIPACKAGE ;
typedef  scalar_t__* LPWSTR ;
typedef  int* LPDWORD ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_INVALID_PARAMETER ; 
 int /*<<< orphan*/  ERROR_MORE_DATA ; 
 int /*<<< orphan*/  ERROR_OUTOFMEMORY ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 TYPE_1__* FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *,TYPE_1__*,scalar_t__*,int*) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

UINT FUNC12( MSIPACKAGE* package, MSIRECORD* record, LPWSTR buffer,
                        LPDWORD size )
{
    WCHAR *format, *deformated = NULL;
    UINT rc = ERROR_INVALID_PARAMETER;
    DWORD len;
    MSIRECORD *record_deformated;
    int field_count, i;

    FUNC4("%p %p %p %p\n", package, record, buffer, size);
    FUNC7(record);

    if (!(format = FUNC9( record, 0 )))
        format = FUNC5( record );

    field_count = FUNC1(record);
    record_deformated = FUNC0(record);
    if (!record_deformated)
    {
        rc = ERROR_OUTOFMEMORY;
        goto end;
    }
    FUNC3(record_deformated, 0, format);
    for (i = 1; i <= field_count; i++)
    {
        if (FUNC2(record, i))
        {
            FUNC6(package, FUNC2(record, i), &deformated, &len, NULL);
            FUNC3(record_deformated, i, deformated);
            FUNC10(deformated);
        }
    }

    FUNC6(package, format, &deformated, &len, record_deformated);
    if (buffer)
    {
        if (*size>len)
        {
            FUNC8(buffer,deformated,len*sizeof(WCHAR));
            rc = ERROR_SUCCESS;
            buffer[len] = 0;
        }
        else
        {
            if (*size > 0)
            {
                FUNC8(buffer,deformated,(*size)*sizeof(WCHAR));
                buffer[(*size)-1] = 0;
            }
            rc = ERROR_MORE_DATA;
        }
    }
    else rc = ERROR_SUCCESS;

    *size = len;
    FUNC11(&record_deformated->hdr);
end:
    FUNC10( format );
    FUNC10( deformated );
    return rc;
}