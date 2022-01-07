
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LONG ;
typedef int HWND ;


 int GetWindowLongPtrW (int ,int ) ;
 int STATE_GWL_OFFSET ;

__attribute__((used)) static inline LONG get_button_state( HWND hwnd )
{
    return GetWindowLongPtrW( hwnd, STATE_GWL_OFFSET );
}
