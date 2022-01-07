
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ huser_dll; } ;
typedef TYPE_1__ win32_gesture_sys_t ;


 int FreeLibrary (scalar_t__) ;
 int free (TYPE_1__*) ;

void CloseGestures( win32_gesture_sys_t *p_gesture )
{
    if (p_gesture && p_gesture->huser_dll )
        FreeLibrary( p_gesture->huser_dll );
    free( p_gesture );
}
