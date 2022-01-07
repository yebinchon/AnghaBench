
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* name; } ;
typedef TYPE_1__ Mode ;


 int g_assert (int ) ;

const char *mode_get_name ( const Mode *mode )
{
    g_assert ( mode != ((void*)0) );
    return mode->name;
}
