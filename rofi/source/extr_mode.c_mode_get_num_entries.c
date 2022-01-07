
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int (* _get_num_entries ) (TYPE_1__ const*) ;} ;
typedef TYPE_1__ Mode ;


 int g_assert (int ) ;
 unsigned int stub1 (TYPE_1__ const*) ;

unsigned int mode_get_num_entries ( const Mode *mode )
{
    g_assert ( mode != ((void*)0) );
    g_assert ( mode->_get_num_entries != ((void*)0) );
    return mode->_get_num_entries ( mode );
}
