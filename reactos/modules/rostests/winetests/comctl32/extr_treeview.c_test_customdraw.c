
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lf ;
typedef int WPARAM ;
struct TYPE_4__ {int lfHeight; } ;
typedef TYPE_1__ LOGFONTA ;
typedef int HWND ;


 int * CreateFontIndirectA (TYPE_1__*) ;
 int DeleteObject (int *) ;
 int DestroyWindow (int ) ;
 int FALSE ;
 int InvalidateRect (int ,int *,int ) ;
 int NUM_MSG_SEQUENCES ;
 int PARENT_CD_SEQ_INDEX ;
 int SPI_GETICONTITLELOGFONT ;
 int SendMessageA (int ,int ,int ,int ) ;
 int SystemParametersInfoA (int ,int,TYPE_1__*,int ) ;
 int TRUE ;
 int TVE_EXPAND ;
 int TVM_EXPAND ;
 int UpdateWindow (int ) ;
 int create_treeview_control (int ) ;
 int fill_tree (int ) ;
 int flush_sequences (int ,int ) ;
 int * g_customdraw_font ;
 scalar_t__ hRoot ;
 int ok_sequence (int ,int ,int ,char*,int ) ;
 int parent_cd_seq ;
 int sequences ;

__attribute__((used)) static void test_customdraw(void)
{
    LOGFONTA lf;
    HWND hwnd;

    hwnd = create_treeview_control(0);
    fill_tree(hwnd);
    SendMessageA(hwnd, TVM_EXPAND, TVE_EXPAND, (WPARAM)hRoot);


    SystemParametersInfoA(SPI_GETICONTITLELOGFONT, sizeof(lf), &lf, 0);
    lf.lfHeight *= 2;
    g_customdraw_font = CreateFontIndirectA(&lf);
    flush_sequences(sequences, NUM_MSG_SEQUENCES);
    InvalidateRect(hwnd, ((void*)0), TRUE);
    UpdateWindow(hwnd);
    ok_sequence(sequences, PARENT_CD_SEQ_INDEX, parent_cd_seq, "custom draw notifications", FALSE);
    DeleteObject(g_customdraw_font);
    g_customdraw_font = ((void*)0);

    DestroyWindow(hwnd);
}
