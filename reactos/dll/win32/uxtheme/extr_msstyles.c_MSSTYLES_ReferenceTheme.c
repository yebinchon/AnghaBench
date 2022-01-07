
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dwRefCount; } ;
typedef TYPE_1__* PTHEME_FILE ;
typedef int HRESULT ;


 int S_OK ;
 int TRACE (char*,TYPE_1__*,int ) ;

HRESULT MSSTYLES_ReferenceTheme(PTHEME_FILE tf)
{
    tf->dwRefCount++;
    TRACE("Theme %p refcount: %d\n", tf, tf->dwRefCount);
    return S_OK;
}
