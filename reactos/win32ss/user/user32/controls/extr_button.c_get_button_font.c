
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HWND ;
typedef int HFONT ;


 int BUTTON_HFONT_GWL_OFFSET ;
 int GetWindowLongPtrW (int ,int ) ;

__attribute__((used)) static inline HFONT get_button_font( HWND hwnd )
{
    return (HFONT)GetWindowLongPtrW( hwnd, BUTTON_HFONT_GWL_OFFSET );
}
