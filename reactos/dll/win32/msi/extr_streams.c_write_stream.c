
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int buf ;
typedef scalar_t__ UINT ;
struct TYPE_8__ {scalar_t__ QuadPart; } ;
struct TYPE_7__ {scalar_t__ QuadPart; } ;
struct TYPE_6__ {TYPE_4__ cbSize; } ;
typedef TYPE_1__ STATSTG ;
typedef TYPE_2__ LARGE_INTEGER ;
typedef int IStream ;
typedef int HRESULT ;


 int E_INVALIDARG ;
 scalar_t__ FAILED (int ) ;
 int IStream_Read (int *,char*,scalar_t__,scalar_t__*) ;
 int IStream_Seek (int *,TYPE_2__,int ,int *) ;
 int IStream_SetSize (int *,TYPE_4__) ;
 int IStream_Stat (int *,TYPE_1__*,int ) ;
 int IStream_Write (int *,char*,scalar_t__,scalar_t__*) ;
 int STATFLAG_NONAME ;
 int STREAM_SEEK_SET ;
 int S_OK ;
 int WARN (char*,int ) ;
 scalar_t__ min (int,scalar_t__) ;

__attribute__((used)) static HRESULT write_stream( IStream *dst, IStream *src )
{
    HRESULT hr;
    char buf[4096];
    STATSTG stat;
    LARGE_INTEGER pos;
    UINT count, size;

    hr = IStream_Stat( src, &stat, STATFLAG_NONAME );
    if (FAILED( hr )) return hr;

    hr = IStream_SetSize( dst, stat.cbSize );
    if (FAILED( hr )) return hr;

    pos.QuadPart = 0;
    hr = IStream_Seek( dst, pos, STREAM_SEEK_SET, ((void*)0) );
    if (FAILED( hr )) return hr;

    for (;;)
    {
        size = min( sizeof(buf), stat.cbSize.QuadPart );
        hr = IStream_Read( src, buf, size, &count );
        if (FAILED( hr ) || count != size)
        {
            WARN("failed to read stream: %08x\n", hr);
            return E_INVALIDARG;
        }
        stat.cbSize.QuadPart -= count;
        if (count)
        {
            size = count;
            hr = IStream_Write( dst, buf, size, &count );
            if (FAILED( hr ) || count != size)
            {
                WARN("failed to write stream: %08x\n", hr);
                return E_INVALIDARG;
            }
        }
        if (!stat.cbSize.QuadPart) break;
    }

    return S_OK;
}
