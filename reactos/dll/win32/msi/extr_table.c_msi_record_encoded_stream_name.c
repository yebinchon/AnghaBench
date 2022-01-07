
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WCHAR ;
typedef size_t UINT ;
struct TYPE_6__ {size_t num_cols; TYPE_1__* columns; int * name; } ;
struct TYPE_5__ {int type; } ;
typedef TYPE_2__ MSITABLEVIEW ;
typedef int MSIRECORD ;
typedef int * LPWSTR ;
typedef int DWORD ;


 size_t ERROR_OUTOFMEMORY ;
 size_t ERROR_SUCCESS ;
 int FALSE ;
 int MSITYPE_KEY ;
 int TRACE (char*,TYPE_2__ const*,int *) ;
 int * encode_streamname (int ,int *) ;
 int lstrcatW (int *,int *) ;
 int lstrcpyW (int *,int *) ;
 int lstrlenW (int *) ;
 int * msi_alloc (int) ;
 int * msi_dup_record_field (int *,size_t) ;
 int msi_free (int *) ;
 int * msi_realloc (int *,int) ;
 int * szDot ;

__attribute__((used)) static UINT msi_record_encoded_stream_name( const MSITABLEVIEW *tv, MSIRECORD *rec, LPWSTR *pstname )
{
    LPWSTR stname = ((void*)0), sval, p;
    DWORD len;
    UINT i, r;

    TRACE("%p %p\n", tv, rec);

    len = lstrlenW( tv->name ) + 1;
    stname = msi_alloc( len*sizeof(WCHAR) );
    if ( !stname )
    {
       r = ERROR_OUTOFMEMORY;
       goto err;
    }

    lstrcpyW( stname, tv->name );

    for ( i = 0; i < tv->num_cols; i++ )
    {
        if ( tv->columns[i].type & MSITYPE_KEY )
        {
            sval = msi_dup_record_field( rec, i + 1 );
            if ( !sval )
            {
                r = ERROR_OUTOFMEMORY;
                goto err;
            }

            len += lstrlenW( szDot ) + lstrlenW ( sval );
            p = msi_realloc ( stname, len*sizeof(WCHAR) );
            if ( !p )
            {
                r = ERROR_OUTOFMEMORY;
                msi_free(sval);
                goto err;
            }
            stname = p;

            lstrcatW( stname, szDot );
            lstrcatW( stname, sval );

            msi_free( sval );
        }
        else
            continue;
    }

    *pstname = encode_streamname( FALSE, stname );
    msi_free( stname );

    return ERROR_SUCCESS;

err:
    msi_free ( stname );
    *pstname = ((void*)0);
    return r;
}
