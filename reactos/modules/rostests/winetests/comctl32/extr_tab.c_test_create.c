
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tabcreate_style {scalar_t__ act_style; scalar_t__ style; } ;
typedef int HWND ;
typedef scalar_t__ DWORD ;


 int CreateWindowA (int ,char*,scalar_t__,int,int,int,int,int ,int *,int *,int ) ;
 int DestroyWindow (int ) ;
 int GWL_STYLE ;
 scalar_t__ GetWindowLongA (int ,int ) ;
 int WC_TABCONTROLA ;
 struct tabcreate_style* create_styles ;
 int ok (int,char*,scalar_t__,scalar_t__) ;
 int parent_wnd ;

__attribute__((used)) static void test_create(void)
{
    const struct tabcreate_style *ptr = create_styles;
    DWORD style;
    HWND hTab;

    while (ptr->style)
    {
        hTab = CreateWindowA(WC_TABCONTROLA, "TestTab", ptr->style,
            10, 10, 300, 100, parent_wnd, ((void*)0), ((void*)0), 0);
        style = GetWindowLongA(hTab, GWL_STYLE);
        ok(style == ptr->act_style, "expected style 0x%08x, got style 0x%08x\n", ptr->act_style, style);

        DestroyWindow(hTab);
        ptr++;
    }
}
