
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_fourcc_t ;
struct TYPE_3__ {scalar_t__ format; int vlc_format; int * name; } ;
typedef TYPE_1__ dxgi_format_t ;
typedef scalar_t__ DXGI_FORMAT ;


 TYPE_1__* dxgi_formats ;

vlc_fourcc_t DxgiFormatFourcc(DXGI_FORMAT format)
{
    for (const dxgi_format_t *f = dxgi_formats; f->name != ((void*)0); ++f)
    {
        if (f->format == format)
            return f->vlc_format;
    }
    return 0;
}
