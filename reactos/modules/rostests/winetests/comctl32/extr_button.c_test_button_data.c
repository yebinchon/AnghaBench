
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const LONG ;
typedef int * HWND ;
typedef int DWORD ;


 unsigned int ARRAY_SIZE (int const*) ;
 int const BS_NOTIFY ;





 int * CreateWindowExA (int ,char*,char*,int,int,int,int,int,int ,int ,int ,int *) ;
 int DestroyWindow (int *) ;
 scalar_t__ GetWindowLongPtrA (int *,int ) ;
 int const WS_CHILD ;
 int WS_OVERLAPPEDWINDOW ;
 int WS_VISIBLE ;
 int * create_button (int const,int *) ;
 int ok (int,char*) ;
 int test_bcm_splitinfo (int *) ;

__attribute__((used)) static void test_button_data(void)
{
    static const DWORD styles[] =
    {
        131,
        135,
        138,
        140,
        130,
        142,
        141,
        133,
        128,
        139,
        132,
        129,
        134,
        137,
        136,
    };

    struct button_desc
    {
        HWND self;
        HWND parent;
        LONG style;
    };
    unsigned int i;
    HWND parent;

    parent = CreateWindowExA(0, "TestParentClass", "Test parent", WS_OVERLAPPEDWINDOW | WS_VISIBLE,
                             100, 100, 200, 200, 0, 0, 0, ((void*)0));
    ok(parent != 0, "Failed to create parent window\n");

    for (i = 0; i < ARRAY_SIZE(styles); i++)
    {
        struct button_desc *desc;
        HWND hwnd;

        hwnd = create_button(styles[i], parent);
        ok(hwnd != ((void*)0), "Failed to create a button.\n");

        desc = (void *)GetWindowLongPtrA(hwnd, 0);
        ok(desc != ((void*)0), "Expected window data.\n");

        if (desc)
        {
            ok(desc->self == hwnd, "Unexpected 'self' field.\n");
            ok(desc->parent == parent, "Unexpected 'parent' field.\n");
            ok(desc->style == (WS_CHILD | BS_NOTIFY | styles[i]), "Unexpected 'style' field.\n");
        }


        test_bcm_splitinfo(hwnd);

        DestroyWindow(hwnd);
    }

    DestroyWindow(parent);
}
