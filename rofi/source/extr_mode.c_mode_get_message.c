
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* (* _get_message ) (TYPE_1__ const*) ;} ;
typedef TYPE_1__ Mode ;


 char* stub1 (TYPE_1__ const*) ;

char *mode_get_message ( const Mode *mode )
{
    if ( mode->_get_message ) {
        return mode->_get_message ( mode );
    }
    return ((void*)0);
}
