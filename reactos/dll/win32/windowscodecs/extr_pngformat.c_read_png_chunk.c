
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int IStream ;
typedef int HRESULT ;
typedef int BYTE ;


 int E_FAIL ;
 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int *) ;
 int IStream_Read (int *,int *,int,int*) ;
 scalar_t__ SUCCEEDED (int ) ;
 int S_OK ;
 int memcpy (int *,int *,int) ;
 int read_ulong_be (int *) ;

__attribute__((used)) static HRESULT read_png_chunk(IStream *stream, BYTE *type, BYTE **data, ULONG *data_size)
{
    BYTE header[8];
    HRESULT hr;
    ULONG bytesread;

    hr = IStream_Read(stream, header, 8, &bytesread);
    if (FAILED(hr) || bytesread < 8)
    {
        if (SUCCEEDED(hr))
            hr = E_FAIL;
        return hr;
    }

    *data_size = read_ulong_be(&header[0]);

    memcpy(type, &header[4], 4);

    if (data)
    {
        *data = HeapAlloc(GetProcessHeap(), 0, *data_size);
        if (!*data)
            return E_OUTOFMEMORY;

        hr = IStream_Read(stream, *data, *data_size, &bytesread);

        if (FAILED(hr) || bytesread < *data_size)
        {
            if (SUCCEEDED(hr))
                hr = E_FAIL;
            HeapFree(GetProcessHeap(), 0, *data);
            *data = ((void*)0);
            return hr;
        }


    }

    return S_OK;
}
