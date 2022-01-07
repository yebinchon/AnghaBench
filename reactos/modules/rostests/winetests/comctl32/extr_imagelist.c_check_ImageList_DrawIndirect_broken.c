
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT32 ;
typedef int UINT ;
struct TYPE_3__ {int member_0; int member_2; int member_16; int member_15; int member_14; int member_13; int member_12; int member_11; int member_10; int member_9; int member_8; int member_7; int member_6; int member_5; int member_4; int member_3; int member_1; } ;
typedef TYPE_1__ IMAGELISTDRAWPARAMS ;
typedef int HIMAGELIST ;
typedef int HDC ;
typedef int DWORD ;


 int CLR_NONE ;
 scalar_t__ broken (scalar_t__) ;
 scalar_t__ colour_match (int,int) ;
 int ok (int,char*,int,int,int) ;
 int pImageList_DrawIndirect (TYPE_1__*) ;

__attribute__((used)) static void check_ImageList_DrawIndirect_broken(HDC hdc, HIMAGELIST himl, UINT32 *bits, int i,
                                                UINT fStyle, UINT fState, DWORD Frame, UINT32 expected,
                                                UINT32 broken_expected, int line)
{
    IMAGELISTDRAWPARAMS ildp = {sizeof(IMAGELISTDRAWPARAMS), himl, i, hdc,
        0, 0, 0, 0, 0, 0, CLR_NONE, CLR_NONE, fStyle, 0, fState, Frame, 0x00000000};
    bits[0] = 0x00FFFFFF;
    pImageList_DrawIndirect(&ildp);
    ok(colour_match(bits[0], expected) ||
       broken(colour_match(bits[0], broken_expected)),
       "ImageList_DrawIndirect: Pixel %08X, Expected a close match to %08X from line %d\n",
       bits[0] & 0x00FFFFFF, expected, line);
}
