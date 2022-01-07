
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;
typedef int HDC ;
typedef int DWORD ;


 int StretchBlt (int ,int ,int ,int,int,int ,int ,int ,int,int,int ) ;
 int ok (int,char*,int ,int,int,int) ;

__attribute__((used)) static void check_StretchBlt_pixel(HDC hdcDst, HDC hdcSrc, UINT32 *dstBuffer, UINT32 *srcBuffer,
                                   DWORD dwRop, UINT32 expected, int line)
{
    *srcBuffer = 0xFEDCBA98;
    *dstBuffer = 0x89ABCDEF;
    StretchBlt(hdcDst, 0, 0, 2, 1, hdcSrc, 0, 0, 1, 1, dwRop);
    ok(expected == *dstBuffer,
        "StretchBlt with dwRop %06X. Expected 0x%08X, got 0x%08X from line %d\n",
        dwRop, expected, *dstBuffer, line);
}
