
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* window; } ;
typedef TYPE_1__ ole_clipbrd ;
typedef void* HWND ;
typedef int HRESULT ;


 int E_FAIL ;
 int IsWindow (void*) ;
 int S_OK ;
 void* create_clipbrd_window () ;

__attribute__((used)) static inline HRESULT get_clipbrd_window(ole_clipbrd *clipbrd, HWND *wnd)
{






    if ( !clipbrd->window )
        clipbrd->window = create_clipbrd_window();

    *wnd = clipbrd->window;
    return *wnd ? S_OK : E_FAIL;
}
