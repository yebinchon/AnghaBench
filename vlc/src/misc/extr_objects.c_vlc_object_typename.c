
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_2__ {char const* typename; } ;


 TYPE_1__* vlc_internals (int const*) ;

const char *vlc_object_typename(const vlc_object_t *obj)
{
    return vlc_internals(obj)->typename;
}
