
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oletls {int ole_inits; } ;
typedef int ole_clipbrd ;
typedef int HRESULT ;


 struct oletls* COM_CurrentInfo () ;
 int CO_E_NOTINITIALIZED ;
 int S_OK ;
 int * theOleClipboard ;

__attribute__((used)) static inline HRESULT get_ole_clipbrd(ole_clipbrd **clipbrd)
{
    struct oletls *info = COM_CurrentInfo();
    *clipbrd = ((void*)0);

    if(!info->ole_inits)
        return CO_E_NOTINITIALIZED;
    *clipbrd = theOleClipboard;

    return S_OK;
}
