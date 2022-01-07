
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int left; int top; int right; int bottom; } ;
typedef TYPE_1__ RECT ;
typedef int HDC ;


 int DCB_RESET ;
 int EqualRect (TYPE_1__*,TYPE_1__*) ;
 int GetBoundsRect (int ,TYPE_1__*,int ) ;
 TYPE_1__* current_bounds ;
 int dst_format ;
 int ok (int ,char*,int ,...) ;
 int wine_dbgstr_rect (TYPE_1__*) ;

__attribute__((used)) static void compare_bounds( HDC hdc, const char *info )
{
    RECT rect;

    GetBoundsRect( hdc, &rect, DCB_RESET );

    if (current_bounds->left == -1 &&
        current_bounds->top == -1 &&
        current_bounds->right == -1 &&
        current_bounds->bottom == -1)
    {
        ok( 0, "missing bounds, got %s,\n", wine_dbgstr_rect( &rect ));
        return;
    }

    ok( EqualRect( current_bounds, &rect ), "%s: %s: expected bounds %s got %s\n", dst_format, info,
        wine_dbgstr_rect( current_bounds ), wine_dbgstr_rect( &rect ));
    current_bounds++;
}
