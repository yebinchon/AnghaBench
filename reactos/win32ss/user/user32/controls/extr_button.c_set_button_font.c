
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LONG_PTR ;
typedef int HWND ;
typedef scalar_t__ HFONT ;


 int BUTTON_HFONT_GWL_OFFSET ;
 int SetWindowLongPtrW (int ,int ,int ) ;

__attribute__((used)) static inline void set_button_font( HWND hwnd, HFONT font )
{
    SetWindowLongPtrW( hwnd, BUTTON_HFONT_GWL_OFFSET, (LONG_PTR)font );
}
