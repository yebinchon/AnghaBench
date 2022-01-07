
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MSG ;
typedef int DWORD ;
typedef int BOOL ;


 int CHECK_CALLED (int ) ;
 int DispatchMessageA (int *) ;
 int EXPECT_SETTITLE ;
 int EXPECT_UPDATEUI ;
 int Exec_SETTITLE ;
 int Exec_UPDATECOMMANDS ;
 scalar_t__ GetMessageA (int *,int ,int ,int ) ;
 int SET_EXPECT (int ) ;
 int TranslateMessage (int *) ;
 int UpdateUI ;
 int called_Exec_SETTITLE ;
 int called_UpdateUI ;
 int doc_hwnd ;

__attribute__((used)) static void test_timer(DWORD flags)
{
    BOOL *b = &called_Exec_SETTITLE;
    MSG msg;

    if(flags & EXPECT_UPDATEUI) {
        SET_EXPECT(UpdateUI);
        SET_EXPECT(Exec_UPDATECOMMANDS);
        b = &called_UpdateUI;
    }
    if(flags & EXPECT_SETTITLE)
        SET_EXPECT(Exec_SETTITLE);

    while(!*b && GetMessageA(&msg, doc_hwnd, 0, 0)) {
        TranslateMessage(&msg);
        DispatchMessageA(&msg);
    }

    if(flags & EXPECT_UPDATEUI) {
        CHECK_CALLED(UpdateUI);
        CHECK_CALLED(Exec_UPDATECOMMANDS);
    }
    if(flags & EXPECT_SETTITLE)
        CHECK_CALLED(Exec_SETTITLE);
}
