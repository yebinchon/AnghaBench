
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bits ;
typedef int LPCSTR ;
typedef int HWND ;
typedef int HIMAGELIST ;
typedef int HDC ;
typedef scalar_t__ COLORREF ;
typedef int BYTE ;


 int BitBlt (int ,int ,int ,int,int,int ,int,int,int ) ;
 int FALSE ;
 scalar_t__ GetPixel (int ,int,int) ;
 int ReleaseDC (int ,int ) ;
 int SRCCOPY ;
 int dump_bits (int*,int const*,int) ;
 scalar_t__ memcmp (int*,int const*,int) ;
 int memset (int*,int ,int) ;
 int ok (int,char*,int ) ;
 int show_image (int ,int ,int,int,int ,int ) ;
 int winetest_interactive ;

__attribute__((used)) static void check_bits(HWND hwnd, HIMAGELIST himl, int idx, int size,
                       const BYTE *checkbits, LPCSTR loc)
{
    BYTE bits[100*100/8];
    COLORREF c;
    HDC hdc;
    int x, y, i = -1;

    if (!winetest_interactive || !himl) return;

    memset(bits, 0, sizeof(bits));
    hdc = show_image(hwnd, himl, idx, size, loc, FALSE);

    c = GetPixel(hdc, 0, 0);

    for (y = 0; y < size; y ++)
    {
        for (x = 0; x < size; x++)
        {
            if (!(x & 0x7)) i++;
            if (GetPixel(hdc, x, y) != c) bits[i] |= (0x80 >> (x & 0x7));
        }
    }

    BitBlt(hdc, 0, 0, size, size, hdc, size+1, size+1, SRCCOPY);
    ReleaseDC(hwnd, hdc);

    ok (memcmp(bits, checkbits, (size * size)/8) == 0,
        "%s: bits different\n", loc);
    if (memcmp(bits, checkbits, (size * size)/8))
        dump_bits(bits, checkbits, size);
}
