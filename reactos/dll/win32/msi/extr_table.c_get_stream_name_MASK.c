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
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
typedef  size_t UINT ;
struct TYPE_8__ {size_t type; } ;
struct TYPE_7__ {int /*<<< orphan*/  strings; } ;
struct TYPE_6__ {char* name; size_t num_cols; TYPE_4__* columns; TYPE_3__* db; } ;
typedef  int /*<<< orphan*/  MSIVIEW ;
typedef  TYPE_1__ MSITABLEVIEW ;
typedef  char* LPWSTR ;
typedef  char* LPCWSTR ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,size_t) ; 
 size_t ERROR_FUNCTION_FAILED ; 
 size_t ERROR_INVALID_PARAMETER ; 
 size_t ERROR_OUTOFMEMORY ; 
 size_t ERROR_SUCCESS ; 
 int /*<<< orphan*/  LONG_STR_BYTES ; 
 size_t MSITYPE_KEY ; 
 int MSITYPE_STRING ; 
 size_t FUNC1 (int /*<<< orphan*/ *,size_t,size_t,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (char*,TYPE_1__ const*,size_t) ; 
 size_t FUNC3 (TYPE_3__*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int FUNC6 (char*) ; 
 char* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 char* FUNC9 (char*,int) ; 
 char* FUNC10 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*,char const*,size_t) ; 
 char* szDot ; 

__attribute__((used)) static UINT FUNC12( const MSITABLEVIEW *tv, UINT row, WCHAR **pstname )
{
    LPWSTR p, stname = NULL;
    UINT i, r, type, ival;
    DWORD len;
    LPCWSTR sval;
    MSIVIEW *view = (MSIVIEW *) tv;

    FUNC2("%p %d\n", tv, row);

    len = FUNC6( tv->name ) + 1;
    stname = FUNC7( len*sizeof(WCHAR) );
    if ( !stname )
    {
       r = ERROR_OUTOFMEMORY;
       goto err;
    }

    FUNC5( stname, tv->name );

    for ( i = 0; i < tv->num_cols; i++ )
    {
        type = tv->columns[i].type;
        if ( type & MSITYPE_KEY )
        {
            WCHAR number[0x20];

            r = FUNC1( view, row, i+1, &ival );
            if ( r != ERROR_SUCCESS )
                goto err;

            if ( tv->columns[i].type & MSITYPE_STRING )
            {
                sval = FUNC10( tv->db->strings, ival, NULL );
                if ( !sval )
                {
                    r = ERROR_INVALID_PARAMETER;
                    goto err;
                }
            }
            else
            {
                static const WCHAR fmt[] = { '%','d',0 };
                UINT n = FUNC3( tv->db, &tv->columns[i], LONG_STR_BYTES );

                switch( n )
                {
                case 2:
                    FUNC11( number, fmt, ival-0x8000 );
                    break;
                case 4:
                    FUNC11( number, fmt, ival^0x80000000 );
                    break;
                default:
                    FUNC0( "oops - unknown column width %d\n", n );
                    r = ERROR_FUNCTION_FAILED;
                    goto err;
                }
                sval = number;
            }

            len += FUNC6( szDot ) + FUNC6( sval );
            p = FUNC9 ( stname, len*sizeof(WCHAR) );
            if ( !p )
            {
                r = ERROR_OUTOFMEMORY;
                goto err;
            }
            stname = p;

            FUNC4( stname, szDot );
            FUNC4( stname, sval );
        }
        else
           continue;
    }

    *pstname = stname;
    return ERROR_SUCCESS;

err:
    FUNC8( stname );
    *pstname = NULL;
    return r;
}