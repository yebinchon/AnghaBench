
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_3__ {int member_0; int member_2; int member_12; int member_16; int member_15; int member_14; int member_13; int member_11; int member_10; int member_9; int member_8; int member_7; int member_6; int member_5; int member_4; int member_3; int member_1; } ;
typedef TYPE_1__ IMAGELISTDRAWPARAMS ;
typedef int HIMAGELIST ;
typedef int HDC ;
typedef int DWORD ;


 int CLR_NONE ;
 int ILD_IMAGE ;
 int ILD_ROP ;
 int ILS_NORMAL ;
 int check_ImageList_DrawIndirect (TYPE_1__*,int *,int ,int) ;

__attribute__((used)) static void check_ImageList_DrawIndirect_ILD_ROP(HDC hdc, HIMAGELIST himl, UINT32 *bits, int i,
                                                DWORD dwRop, UINT32 expected, int line)
{
    IMAGELISTDRAWPARAMS ildp = {sizeof(IMAGELISTDRAWPARAMS), himl, i, hdc,
        0, 0, 0, 0, 0, 0, CLR_NONE, CLR_NONE, ILD_IMAGE | ILD_ROP, dwRop, ILS_NORMAL, 0, 0x00000000};
    check_ImageList_DrawIndirect(&ildp, bits, expected, line);
}
