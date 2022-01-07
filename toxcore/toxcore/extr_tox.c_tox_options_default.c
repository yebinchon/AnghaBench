
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Tox_Options {int ipv6_enabled; int udp_enabled; int proxy_type; } ;


 int TOX_PROXY_TYPE_NONE ;
 int memset (struct Tox_Options*,int ,int) ;

void tox_options_default(struct Tox_Options *options)
{
    if (options) {
        memset(options, 0, sizeof(struct Tox_Options));
        options->ipv6_enabled = 1;
        options->udp_enabled = 1;
        options->proxy_type = TOX_PROXY_TYPE_NONE;
    }
}
