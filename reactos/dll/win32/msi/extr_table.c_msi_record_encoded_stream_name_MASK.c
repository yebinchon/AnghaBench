#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  size_t UINT ;
struct TYPE_6__ {size_t num_cols; TYPE_1__* columns; int /*<<< orphan*/ * name; } ;
struct TYPE_5__ {int type; } ;
typedef  TYPE_2__ MSITABLEVIEW ;
typedef  int /*<<< orphan*/  MSIRECORD ;
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  int DWORD ;

/* Variables and functions */
 size_t ERROR_OUTOFMEMORY ; 
 size_t ERROR_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 int MSITYPE_KEY ; 
 int /*<<< orphan*/  FUNC0 (char*,TYPE_2__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * szDot ; 

__attribute__((used)) static UINT FUNC9( const MSITABLEVIEW *tv, MSIRECORD *rec, LPWSTR *pstname )
{
    LPWSTR stname = NULL, sval, p;
    DWORD len;
    UINT i, r;

    FUNC0("%p %p\n", tv, rec);

    len = FUNC4( tv->name ) + 1;
    stname = FUNC5( len*sizeof(WCHAR) );
    if ( !stname )
    {
       r = ERROR_OUTOFMEMORY;
       goto err;
    }

    FUNC3( stname, tv->name );

    for ( i = 0; i < tv->num_cols; i++ )
    {
        if ( tv->columns[i].type & MSITYPE_KEY )
        {
            sval = FUNC6( rec, i + 1 );
            if ( !sval )
            {
                r = ERROR_OUTOFMEMORY;
                goto err;
            }

            len += FUNC4( szDot ) + FUNC4 ( sval );
            p = FUNC8 ( stname, len*sizeof(WCHAR) );
            if ( !p )
            {
                r = ERROR_OUTOFMEMORY;
                FUNC7(sval);
                goto err;
            }
            stname = p;

            FUNC2( stname, szDot );
            FUNC2( stname, sval );

            FUNC7( sval );
        }
        else
            continue;
    }

    *pstname = FUNC1( FALSE, stname );
    FUNC7( stname );

    return ERROR_SUCCESS;

err:
    FUNC7 ( stname );
    *pstname = NULL;
    return r;
}