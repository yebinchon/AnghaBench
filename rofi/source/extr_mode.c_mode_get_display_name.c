
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* display_name; char const* name; } ;
typedef TYPE_1__ Mode ;



const char *mode_get_display_name ( const Mode *mode )
{
    if ( mode->display_name != ((void*)0) ) {
        return mode->display_name;
    }
    return mode->name;
}
