#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  string_table ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int USHORT ;
typedef  int UINT ;
struct TYPE_15__ {int type; } ;
struct TYPE_14__ {int /*<<< orphan*/  hdr; } ;
struct TYPE_13__ {int num_cols; int /*<<< orphan*/  db; TYPE_3__* columns; } ;
typedef  TYPE_1__ MSITABLEVIEW ;
typedef  TYPE_2__ MSIRECORD ;
typedef  TYPE_3__ MSICOLUMNINFO ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  int /*<<< orphan*/  IStream ;
typedef  int /*<<< orphan*/  IStorage ;
typedef  int BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int ERROR_SUCCESS ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int) ; 
 int MSITYPE_KEY ; 
 int MSITYPE_STRING ; 
 TYPE_2__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int,int /*<<< orphan*/ *) ; 
 int STGM_READ ; 
 int STGM_SHARE_EXCLUSIVE ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int FUNC7 (int /*<<< orphan*/ ,TYPE_3__*,int) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_1__ const*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/  const*,int,int*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (int const*,int,int) ; 

__attribute__((used)) static MSIRECORD *FUNC16( const MSITABLEVIEW *tv, const string_table *st,
                                            IStorage *stg, const BYTE *rawdata, UINT bytes_per_strref )
{
    UINT i, val, ofs = 0;
    USHORT mask;
    MSICOLUMNINFO *columns = tv->columns;
    MSIRECORD *rec;

    mask = rawdata[0] | (rawdata[1] << 8);
    rawdata += 2;

    rec = FUNC3( tv->num_cols );
    if( !rec )
        return rec;

    FUNC6("row ->\n");
    for( i=0; i<tv->num_cols; i++ )
    {
        if ( (mask&1) && (i>=(mask>>8)) )
            break;
        /* all keys must be present */
        if ( (~mask&1) && (~columns[i].type & MSITYPE_KEY) && ((1<<i) & ~mask) )
            continue;

        if( FUNC2(tv->columns[i].type) )
        {
            LPWSTR encname;
            IStream *stm = NULL;
            UINT r;

            ofs += FUNC7( tv->db, &columns[i], bytes_per_strref );

            r = FUNC11( tv, rec, &encname );
            if ( r != ERROR_SUCCESS )
            {
                FUNC14( &rec->hdr );
                return NULL;
            }
            r = FUNC1( stg, encname, NULL, STGM_READ | STGM_SHARE_EXCLUSIVE, 0, &stm );
            if ( r != ERROR_SUCCESS )
            {
                FUNC14( &rec->hdr );
                FUNC10( encname );
                return NULL;
            }

            FUNC5( rec, i+1, stm );
            FUNC6(" field %d [%s]\n", i+1, FUNC8(encname));
            FUNC10( encname );
        }
        else if( columns[i].type & MSITYPE_STRING )
        {
            int len;
            const WCHAR *sval;

            val = FUNC15(rawdata, ofs, bytes_per_strref);
            sval = FUNC13( st, val, &len );
            FUNC12( rec, i+1, sval, len );
            FUNC6(" field %d [%s]\n", i+1, FUNC9(sval, len));
            ofs += bytes_per_strref;
        }
        else
        {
            UINT n = FUNC7( tv->db, &columns[i], bytes_per_strref );
            switch( n )
            {
            case 2:
                val = FUNC15(rawdata, ofs, n);
                if (val)
                    FUNC4( rec, i+1, val-0x8000 );
                FUNC6(" field %d [0x%04x]\n", i+1, val );
                break;
            case 4:
                val = FUNC15(rawdata, ofs, n);
                if (val)
                    FUNC4( rec, i+1, val^0x80000000 );
                FUNC6(" field %d [0x%08x]\n", i+1, val );
                break;
            default:
                FUNC0("oops - unknown column width %d\n", n);
                break;
            }
            ofs += n;
        }
    }
    return rec;
}