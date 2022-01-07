
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GUID ;
typedef int BOOL ;


 int FALSE ;
 int GUID_WICPixelFormat1bppIndexed ;
 int GUID_WICPixelFormat2bppIndexed ;
 int GUID_WICPixelFormat4bppIndexed ;
 int GUID_WICPixelFormat8bppIndexed ;
 scalar_t__ IsEqualGUID (int const*,int *) ;
 int TRUE ;

__attribute__((used)) static BOOL is_indexed_format(const GUID *format)
{
    if (IsEqualGUID(format, &GUID_WICPixelFormat1bppIndexed) ||
        IsEqualGUID(format, &GUID_WICPixelFormat2bppIndexed) ||
        IsEqualGUID(format, &GUID_WICPixelFormat4bppIndexed) ||
        IsEqualGUID(format, &GUID_WICPixelFormat8bppIndexed))
        return TRUE;

    return FALSE;
}
