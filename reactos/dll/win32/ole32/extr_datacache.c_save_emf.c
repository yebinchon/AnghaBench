
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_19__ {int hEnhMetaFile; } ;
struct TYPE_20__ {scalar_t__ tymed; TYPE_2__ u; } ;
struct TYPE_18__ {int cfFormat; } ;
struct TYPE_23__ {TYPE_3__ stgmedium; TYPE_1__ fmtetc; } ;
struct TYPE_22__ {int yExt; int xExt; } ;
struct TYPE_21__ {int dwSize; int dwObjectExtentY; int dwObjectExtentX; } ;
typedef TYPE_4__ PresentationDataHeader ;
typedef TYPE_5__ METAFILEPICT ;
typedef int IStream ;
typedef scalar_t__ HRESULT ;
typedef int HDC ;
typedef int ENHMETAHEADER ;
typedef TYPE_6__ DataCacheEntry ;
typedef int DWORD ;
typedef TYPE_4__ BYTE ;
typedef int BOOL ;


 scalar_t__ E_OUTOFMEMORY ;
 scalar_t__ FAILED (scalar_t__) ;
 int GetDC (int ) ;
 int GetEnhMetaFileBits (int ,int,TYPE_4__*) ;
 int GetProcessHeap () ;
 int GetWinMetaFileBits (int ,int,TYPE_4__*,int ,int ) ;
 TYPE_4__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_4__*) ;
 scalar_t__ IStream_Write (int *,TYPE_4__*,int,int *) ;
 int MM_ANISOTROPIC ;
 int ReleaseDC (int ,int ) ;
 scalar_t__ S_OK ;
 scalar_t__ TYMED_NULL ;
 int init_stream_header (TYPE_6__*,TYPE_4__*) ;
 int memcpy (TYPE_4__*,TYPE_4__*,int) ;
 scalar_t__ write_clipformat (int *,int ) ;

__attribute__((used)) static HRESULT save_emf(DataCacheEntry *entry, BOOL contents, IStream *stream)
{
    HRESULT hr = S_OK;
    int data_size = 0;
    BYTE *data;

    if (!contents)
    {
        PresentationDataHeader header;
        METAFILEPICT *mfpict;
        HDC hdc = GetDC(0);

        init_stream_header(entry, &header);
        hr = write_clipformat(stream, entry->fmtetc.cfFormat);
        if (FAILED(hr))
        {
            ReleaseDC(0, hdc);
            return hr;
        }
        data_size = GetWinMetaFileBits(entry->stgmedium.u.hEnhMetaFile, 0, ((void*)0), MM_ANISOTROPIC, hdc);
        header.dwSize = data_size;
        data = HeapAlloc(GetProcessHeap(), 0, header.dwSize);
        if (!data)
        {
            ReleaseDC(0, hdc);
            return E_OUTOFMEMORY;
        }
        GetWinMetaFileBits(entry->stgmedium.u.hEnhMetaFile, header.dwSize, data, MM_ANISOTROPIC, hdc);
        ReleaseDC(0, hdc);
        mfpict = (METAFILEPICT *)data;
        header.dwObjectExtentX = mfpict->xExt;
        header.dwObjectExtentY = mfpict->yExt;
        hr = IStream_Write(stream, &header, sizeof(PresentationDataHeader), ((void*)0));
        if (hr == S_OK && data_size)
            hr = IStream_Write(stream, data, data_size, ((void*)0));
        HeapFree(GetProcessHeap(), 0, data);
    }
    else if (entry->stgmedium.tymed != TYMED_NULL)
    {
        data_size = GetEnhMetaFileBits(entry->stgmedium.u.hEnhMetaFile, 0, ((void*)0));
        data = HeapAlloc(GetProcessHeap(), 0, sizeof(DWORD) + sizeof(ENHMETAHEADER) + data_size);
        if (!data) return E_OUTOFMEMORY;
        *((DWORD *)data) = sizeof(ENHMETAHEADER);
        GetEnhMetaFileBits(entry->stgmedium.u.hEnhMetaFile, data_size, data + sizeof(DWORD) + sizeof(ENHMETAHEADER));
        memcpy(data + sizeof(DWORD), data + sizeof(DWORD) + sizeof(ENHMETAHEADER), sizeof(ENHMETAHEADER));
        data_size += sizeof(DWORD) + sizeof(ENHMETAHEADER);
        hr = IStream_Write(stream, data, data_size, ((void*)0));
        HeapFree(GetProcessHeap(), 0, data);
    }

    return hr;
}
