
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tf; } ;
typedef TYPE_1__* PTHEME_CLASS ;
typedef int HRESULT ;


 int MSSTYLES_CloseThemeFile (int ) ;
 int S_OK ;

HRESULT MSSTYLES_CloseThemeClass(PTHEME_CLASS tc)
{
    MSSTYLES_CloseThemeFile (tc->tf);
    return S_OK;
}
