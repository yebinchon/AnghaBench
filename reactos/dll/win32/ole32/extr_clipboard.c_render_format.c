
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ cfFormat; int tymed; } ;
typedef TYPE_1__* LPFORMATETC ;
typedef int IDataObject ;
typedef int HRESULT ;
typedef int HBITMAP ;
typedef int * HANDLE ;


 int CLIPBRD_E_CANT_SET ;
 int DV_E_FORMATETC ;
 int DeleteObject (int *) ;
 int FIXME (char*,int) ;
 int GlobalFree (int *) ;
 scalar_t__ SUCCEEDED (int ) ;
 int SetClipboardData (scalar_t__,int *) ;
 int TYMED_ENHMF ;
 int TYMED_GDI ;
 int TYMED_HGLOBAL ;
 int TYMED_ISTORAGE ;
 int TYMED_ISTREAM ;
 int TYMED_MFPICT ;
 int WARN (char*) ;
 scalar_t__ embed_source_clipboard_format ;
 int free_metafilepict (int *) ;
 int get_data_from_bitmap (int *,TYPE_1__*,int *) ;
 int get_data_from_enhmetafile (int *,TYPE_1__*,int **) ;
 int get_data_from_global (int *,TYPE_1__*,int **) ;
 int get_data_from_metafilepict (int *,TYPE_1__*,int **) ;
 int get_data_from_storage (int *,TYPE_1__*,int **) ;
 int get_data_from_stream (int *,TYPE_1__*,int **) ;
 int render_embed_source_hack (int *,TYPE_1__*) ;

__attribute__((used)) static HRESULT render_format(IDataObject *data, LPFORMATETC fmt)
{
    HANDLE clip_data = ((void*)0);
    HRESULT hr;


    if(fmt->cfFormat == embed_source_clipboard_format)
    {
        return render_embed_source_hack(data, fmt);
    }

    if(fmt->tymed & TYMED_ISTORAGE)
    {
        hr = get_data_from_storage(data, fmt, &clip_data);
    }
    else if(fmt->tymed & TYMED_ISTREAM)
    {
        hr = get_data_from_stream(data, fmt, &clip_data);
    }
    else if(fmt->tymed & TYMED_HGLOBAL)
    {
        hr = get_data_from_global(data, fmt, &clip_data);
    }
    else if(fmt->tymed & TYMED_ENHMF)
    {
        hr = get_data_from_enhmetafile(data, fmt, &clip_data);
    }
    else if(fmt->tymed & TYMED_MFPICT)
    {

        hr = get_data_from_metafilepict(data, fmt, &clip_data);
    }
    else if(fmt->tymed & TYMED_GDI)
    {

        hr = get_data_from_bitmap(data, fmt, (HBITMAP *)&clip_data);
    }
    else
    {
        FIXME("Unhandled tymed %x\n", fmt->tymed);
        hr = DV_E_FORMATETC;
    }

    if(SUCCEEDED(hr))
    {
        if ( !SetClipboardData(fmt->cfFormat, clip_data) )
        {
            WARN("() : Failed to set rendered clipboard data into clipboard!\n");
            if(fmt->tymed & TYMED_MFPICT)
                free_metafilepict(clip_data);
            else if(fmt->tymed & TYMED_GDI)
                DeleteObject(clip_data);
            else
                GlobalFree(clip_data);
            hr = CLIPBRD_E_CANT_SET;
        }
    }

    return hr;
}
