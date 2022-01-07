
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ format; scalar_t__ name; } ;
typedef TYPE_1__ d3d9_format_t ;
typedef scalar_t__ D3DFORMAT ;


 TYPE_1__ const* d3d_formats ;

__attribute__((used)) static const d3d9_format_t *D3dFindFormat(D3DFORMAT format)
{
    for (unsigned i = 0; d3d_formats[i].name; i++) {
        if (d3d_formats[i].format == format)
            return &d3d_formats[i];
    }
    return ((void*)0);
}
