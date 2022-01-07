
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ version; int flags; } ;
typedef TYPE_1__ ole_stream_header_t ;
typedef int header ;
typedef int IStream ;
typedef int IStorage ;
typedef scalar_t__ HRESULT ;
typedef int DefaultHandler ;
typedef int DWORD ;


 scalar_t__ DV_E_CLIPFORMAT ;
 int FIXME (char*) ;
 scalar_t__ IStorage_OpenStream (int *,int ,int *,int,int ,int **) ;
 scalar_t__ IStream_Read (int *,TYPE_1__*,int,int*) ;
 int IStream_Release (int *) ;
 int OleStream ;
 int STGM_READ ;
 int STGM_SHARE_EXCLUSIVE ;
 scalar_t__ STORAGE_CreateOleStream (int *,int ) ;
 scalar_t__ SUCCEEDED (scalar_t__) ;
 scalar_t__ S_OK ;
 int WARN (char*) ;
 scalar_t__ ole_stream_version ;

__attribute__((used)) static HRESULT load_ole_stream(DefaultHandler *This, IStorage *storage)
{
    IStream *stream;
    HRESULT hr;

    hr = IStorage_OpenStream(storage, OleStream, ((void*)0), STGM_READ | STGM_SHARE_EXCLUSIVE, 0, &stream);

    if(SUCCEEDED(hr))
    {
        DWORD read;
        ole_stream_header_t header;

        hr = IStream_Read(stream, &header, sizeof(header), &read);
        if(hr == S_OK && read == sizeof(header) && header.version == ole_stream_version)
        {
            if(header.flags & 1)
            {

                FIXME("Linked objects are not supported yet\n");
            }
        }
        else
        {
            WARN("Incorrect OleStream header\n");
            hr = DV_E_CLIPFORMAT;
        }
        IStream_Release(stream);
    }
    else
        hr = STORAGE_CreateOleStream(storage, 0);

    return hr;
}
