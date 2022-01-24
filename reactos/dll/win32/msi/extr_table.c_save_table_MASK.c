#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT ;
struct TYPE_11__ {int type; } ;
struct TYPE_10__ {int /*<<< orphan*/  storage; } ;
struct TYPE_9__ {scalar_t__ persistent; size_t col_count; size_t row_count; int /*<<< orphan*/  name; int /*<<< orphan*/ ** data; TYPE_6__* colinfo; int /*<<< orphan*/ * data_persistent; } ;
typedef  TYPE_1__ MSITABLE ;
typedef  TYPE_2__ MSIDATABASE ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,size_t) ; 
 size_t ERROR_FUNCTION_FAILED ; 
 size_t ERROR_NOT_ENOUGH_MEMORY ; 
 size_t ERROR_SUCCESS ; 
 size_t LONG_STR_BYTES ; 
 scalar_t__ MSICONDITION_FALSE ; 
 int MSITYPE_STRING ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t) ; 
 int /*<<< orphan*/  TRUE ; 
 size_t FUNC2 (TYPE_2__*,TYPE_6__*,size_t) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 size_t FUNC6 (TYPE_2__*,TYPE_6__*,size_t,size_t) ; 
 size_t FUNC7 (int /*<<< orphan*/ **,size_t,size_t,size_t) ; 
 size_t FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static UINT FUNC9( MSIDATABASE *db, const MSITABLE *t, UINT bytes_per_strref )
{
    BYTE *rawdata = NULL;
    UINT rawsize, i, j, row_size, row_count;
    UINT r = ERROR_FUNCTION_FAILED;

    /* Nothing to do for non-persistent tables */
    if( t->persistent == MSICONDITION_FALSE )
        return ERROR_SUCCESS;

    FUNC1("Saving %s\n", FUNC3( t->name ) );

    row_size = FUNC6( db, t->colinfo, t->col_count, bytes_per_strref );
    row_count = t->row_count;
    for (i = 0; i < t->row_count; i++)
    {
        if (!t->data_persistent[i])
        {
            row_count = 1; /* yes, this is bizarre */
            break;
        }
    }
    rawsize = row_count * row_size;
    rawdata = FUNC4( rawsize );
    if( !rawdata )
    {
        r = ERROR_NOT_ENOUGH_MEMORY;
        goto err;
    }

    rawsize = 0;
    for (i = 0; i < row_count; i++)
    {
        UINT ofs = 0, ofs_mem = 0;

        if (!t->data_persistent[i]) break;

        for (j = 0; j < t->col_count; j++)
        {
            UINT m = FUNC2( db, &t->colinfo[j], LONG_STR_BYTES );
            UINT n = FUNC2( db, &t->colinfo[j], bytes_per_strref );
            UINT k;

            if (n != 2 && n != 3 && n != 4)
            {
                FUNC0("oops - unknown column width %d\n", n);
                goto err;
            }
            if (t->colinfo[j].type & MSITYPE_STRING && n < m)
            {
                UINT id = FUNC7( t->data, i, ofs_mem, LONG_STR_BYTES );
                if (id > 1 << bytes_per_strref * 8)
                {
                    FUNC0("string id %u out of range\n", id);
                    goto err;
                }
            }
            for (k = 0; k < n; k++)
            {
                rawdata[ofs * row_count + i * n + k] = t->data[i][ofs_mem + k];
            }
            ofs_mem += m;
            ofs += n;
        }
        rawsize += row_size;
    }

    FUNC1("writing %d bytes\n", rawsize);
    r = FUNC8( db->storage, t->name, rawdata, rawsize, TRUE );

err:
    FUNC5( rawdata );
    return r;
}