
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 int memcmp (int const*,int const*,int) ;

__attribute__((used)) static BOOL image_tiff_filter(const BYTE *b, DWORD size)
{
    static const BYTE magic1[] = {0x4d,0x4d,0x00,0x2a};
    static const BYTE magic2[] = {0x49,0x49,0x2a,0xff};

    return size >= 4 && (!memcmp(b, magic1, 4) || !memcmp(b, magic2, 4));
}
