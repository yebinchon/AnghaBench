
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LONG ;
typedef int HWND ;


 int STATE_GWL_OFFSET ;
 int SetWindowLongPtrW (int ,int ,int ) ;

__attribute__((used)) static inline void set_button_state( HWND hwnd, LONG state )
{
    SetWindowLongPtrW( hwnd, STATE_GWL_OFFSET, state );
}
