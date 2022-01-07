
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pixelformatinfo {scalar_t__ guid; } ;
typedef int WICPixelFormatGUID ;
typedef size_t UINT ;


 scalar_t__ IsEqualGUID (scalar_t__,int const*) ;
 struct pixelformatinfo const* supported_formats ;

__attribute__((used)) static const struct pixelformatinfo *get_formatinfo(const WICPixelFormatGUID *format)
{
    UINT i;

    for (i=0; supported_formats[i].guid; i++)
        if (IsEqualGUID(supported_formats[i].guid, format)) return &supported_formats[i];

    return ((void*)0);
}
