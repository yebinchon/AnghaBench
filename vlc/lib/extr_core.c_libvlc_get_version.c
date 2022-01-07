
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* VERSION_MESSAGE ;

const char * libvlc_get_version(void)
{
    return VERSION_MESSAGE;
}
