
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* _init ) (TYPE_1__*) ;} ;
typedef TYPE_1__ Mode ;


 int FALSE ;
 int g_return_val_if_fail (int ,int ) ;
 int stub1 (TYPE_1__*) ;

int mode_init ( Mode *mode )
{
    g_return_val_if_fail ( mode != ((void*)0), FALSE );
    g_return_val_if_fail ( mode->_init != ((void*)0), FALSE );
    return mode->_init ( mode );
}
