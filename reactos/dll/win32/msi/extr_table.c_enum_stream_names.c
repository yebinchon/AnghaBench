
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
typedef scalar_t__ ULONG ;
struct TYPE_3__ {int * pwcsName; } ;
typedef TYPE_1__ STATSTG ;
typedef int IStorage ;
typedef int IEnumSTATSTG ;
typedef int HRESULT ;


 int CoTaskMemFree (int *) ;
 scalar_t__ FAILED (int ) ;
 int IEnumSTATSTG_Next (int *,int,TYPE_1__*,scalar_t__*) ;
 int IEnumSTATSTG_Release (int *) ;
 int IStorage_EnumElements (int *,int ,int *,int ,int **) ;
 int TRACE (char*,scalar_t__,int ,int ) ;
 int debugstr_w (int *) ;
 int decode_streamname (int *,int *) ;

void enum_stream_names( IStorage *stg )
{
    IEnumSTATSTG *stgenum = ((void*)0);
    HRESULT r;
    STATSTG stat;
    ULONG n, count;
    WCHAR name[0x40];

    r = IStorage_EnumElements( stg, 0, ((void*)0), 0, &stgenum );
    if( FAILED( r ) )
        return;

    n = 0;
    while( 1 )
    {
        count = 0;
        r = IEnumSTATSTG_Next( stgenum, 1, &stat, &count );
        if( FAILED( r ) || !count )
            break;
        decode_streamname( stat.pwcsName, name );
        TRACE("stream %2d -> %s %s\n", n,
              debugstr_w(stat.pwcsName), debugstr_w(name) );
        CoTaskMemFree( stat.pwcsName );
        n++;
    }

    IEnumSTATSTG_Release( stgenum );
}
