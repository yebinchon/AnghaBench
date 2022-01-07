
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ vlc_fourcc_t ;
struct TYPE_3__ {scalar_t__ vlc_format; int format; int * name; } ;
typedef TYPE_1__ dxgi_format_t ;
typedef int DXGI_FORMAT ;


 int DXGI_FORMAT_UNKNOWN ;
 TYPE_1__* dxgi_formats ;

DXGI_FORMAT DxgiFourccFormat(vlc_fourcc_t fcc)
{
    for (const dxgi_format_t *f = dxgi_formats; f->name != ((void*)0); ++f)
    {
        if (f->vlc_format == fcc)
            return f->format;
    }
    return DXGI_FORMAT_UNKNOWN;
}
