
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* _destroy ) (TYPE_1__*) ;} ;
typedef TYPE_1__ Mode ;


 int g_assert (int ) ;
 int stub1 (TYPE_1__*) ;

void mode_destroy ( Mode *mode )
{
    g_assert ( mode != ((void*)0) );
    g_assert ( mode->_destroy != ((void*)0) );
    mode->_destroy ( mode );
}
