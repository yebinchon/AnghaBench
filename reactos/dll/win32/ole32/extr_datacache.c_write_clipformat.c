
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int length ;
typedef int format_name ;
typedef int cf ;
typedef int IStream ;
typedef int HRESULT ;
typedef int DWORD ;
typedef scalar_t__ CLIPFORMAT ;


 scalar_t__ FAILED (int ) ;
 int GetClipboardFormatNameA (scalar_t__,char*,int) ;
 int IStream_Write (int *,...) ;

__attribute__((used)) static HRESULT write_clipformat(IStream *stream, CLIPFORMAT clipformat)
{
    DWORD length;
    HRESULT hr;
    char format_name[256];

    if (clipformat == 0)
        length = 0;
    else if (clipformat < 0xc000)
        length = -1;
    else
    {
        length = GetClipboardFormatNameA(clipformat, format_name, sizeof(format_name));

        if (length) length++;
    }
    hr = IStream_Write(stream, &length, sizeof(length), ((void*)0));
    if (FAILED(hr) || clipformat == 0)
        return hr;

    if (clipformat < 0xc000)
    {
        DWORD cf = clipformat;
        hr = IStream_Write(stream, &cf, sizeof(cf), ((void*)0));
    }
    else
    {
        hr = IStream_Write(stream, format_name, length, ((void*)0));
    }
    return hr;
}
