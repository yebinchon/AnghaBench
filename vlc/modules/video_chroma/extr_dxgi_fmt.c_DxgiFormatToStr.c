
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* name; scalar_t__ format; } ;
typedef TYPE_1__ dxgi_format_t ;
typedef scalar_t__ DXGI_FORMAT ;


 TYPE_1__* dxgi_formats ;

const char *DxgiFormatToStr(DXGI_FORMAT format)
{
    for (const dxgi_format_t *f = dxgi_formats; f->name != ((void*)0); ++f)
    {
        if (f->format == format)
            return f->name;
    }
    return ((void*)0);
}
