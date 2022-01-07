
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WICPixelFormatGUID ;
typedef int BOOL ;


 int GUID_WICPixelFormat1bppIndexed ;
 int GUID_WICPixelFormatBlackWhite ;
 scalar_t__ IsEqualGUID (int const*,int *) ;

__attribute__((used)) static BOOL is_1bpp_format(const WICPixelFormatGUID *format)
{
    return IsEqualGUID(format, &GUID_WICPixelFormatBlackWhite) ||
           IsEqualGUID(format, &GUID_WICPixelFormat1bppIndexed);
}
