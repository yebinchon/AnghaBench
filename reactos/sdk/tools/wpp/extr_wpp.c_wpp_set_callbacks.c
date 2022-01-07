
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpp_callbacks {int dummy; } ;


 struct wpp_callbacks const* wpp_callbacks ;

void wpp_set_callbacks( const struct wpp_callbacks *callbacks )
{
    wpp_callbacks = callbacks;
}
