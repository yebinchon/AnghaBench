
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HDC ;


 int DCB_ENABLE ;
 int DCB_RESET ;
 int SetBoundsRect (int ,int *,int) ;
 int current_bounds ;
 int graphics_bounds ;

__attribute__((used)) static void reset_bounds( HDC hdc )
{
    current_bounds = graphics_bounds;
    SetBoundsRect( hdc, ((void*)0), DCB_RESET | DCB_ENABLE );
}
