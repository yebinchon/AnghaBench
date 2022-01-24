#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int UINT ;
struct TYPE_8__ {int /*<<< orphan*/  strings; } ;
struct TYPE_7__ {int type; } ;
struct TYPE_6__ {int num_cols; TYPE_4__* db; TYPE_2__* columns; } ;
typedef  TYPE_1__ MSITABLEVIEW ;
typedef  int /*<<< orphan*/  MSIRECORD ;
typedef  TYPE_2__ MSICOLUMNINFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int ERROR_FUNCTION_FAILED ; 
 int ERROR_NOT_FOUND ; 
 int ERROR_SUCCESS ; 
 int /*<<< orphan*/  LONG_STR_BYTES ; 
 scalar_t__ FUNC1 (int) ; 
 int MSITYPE_STRING ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (TYPE_4__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int,int*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int,int*) ; 

__attribute__((used)) static UINT FUNC7( MSITABLEVIEW *tv, MSIRECORD *rec, UINT iField, UINT *pvalue )
{
    MSICOLUMNINFO columninfo;
    UINT r;
    int ival;

    if ( (iField <= 0) ||
         (iField > tv->num_cols) ||
          FUNC3( rec, iField ) )
        return ERROR_FUNCTION_FAILED;

    columninfo = tv->columns[ iField - 1 ];

    if ( FUNC1(columninfo.type) )
    {
        *pvalue = 1; /* refers to the first key column */
    }
    else if ( columninfo.type & MSITYPE_STRING )
    {
        int len;
        const WCHAR *sval = FUNC5( rec, iField, &len );
        if (sval)
        {
            r = FUNC6( tv->db->strings, sval, len, pvalue );
            if (r != ERROR_SUCCESS)
                return ERROR_NOT_FOUND;
        }
        else *pvalue = 0;
    }
    else if ( FUNC4( tv->db, &columninfo, LONG_STR_BYTES ) == 2 )
    {
        ival = FUNC2( rec, iField );
        if (ival == 0x80000000) *pvalue = 0x8000;
        else
        {
            *pvalue = 0x8000 + FUNC2( rec, iField );
            if (*pvalue & 0xffff0000)
            {
                FUNC0("field %u value %d out of range\n", iField, *pvalue - 0x8000);
                return ERROR_FUNCTION_FAILED;
            }
        }
    }
    else
    {
        ival = FUNC2( rec, iField );
        *pvalue = ival ^ 0x80000000;
    }

    return ERROR_SUCCESS;
}