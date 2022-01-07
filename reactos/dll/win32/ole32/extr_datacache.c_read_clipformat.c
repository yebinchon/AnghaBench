
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int length ;
typedef int cf ;
typedef int ULONG ;
typedef int IStream ;
typedef scalar_t__ HRESULT ;
typedef int DWORD ;
typedef int CLIPFORMAT ;


 scalar_t__ DV_E_CLIPFORMAT ;
 scalar_t__ E_OUTOFMEMORY ;
 int GetProcessHeap () ;
 char* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,char*) ;
 scalar_t__ IStream_Read (int *,...) ;
 int RegisterClipboardFormatA (char*) ;
 scalar_t__ S_OK ;

__attribute__((used)) static HRESULT read_clipformat(IStream *stream, CLIPFORMAT *clipformat)
{
    DWORD length;
    HRESULT hr;
    ULONG read;

    *clipformat = 0;

    hr = IStream_Read(stream, &length, sizeof(length), &read);
    if (hr != S_OK || read != sizeof(length))
        return DV_E_CLIPFORMAT;
    if (!length) {

        return S_OK;
    }
    if (length == -1)
    {
        DWORD cf;
        hr = IStream_Read(stream, &cf, sizeof(cf), &read);
        if (hr != S_OK || read != sizeof(cf))
            return DV_E_CLIPFORMAT;
        *clipformat = cf;
    }
    else
    {
        char *format_name = HeapAlloc(GetProcessHeap(), 0, length);
        if (!format_name)
            return E_OUTOFMEMORY;
        hr = IStream_Read(stream, format_name, length, &read);
        if (hr != S_OK || read != length || format_name[length - 1] != '\0')
        {
            HeapFree(GetProcessHeap(), 0, format_name);
            return DV_E_CLIPFORMAT;
        }
        *clipformat = RegisterClipboardFormatA(format_name);
        HeapFree(GetProcessHeap(), 0, format_name);
    }
    return S_OK;
}
