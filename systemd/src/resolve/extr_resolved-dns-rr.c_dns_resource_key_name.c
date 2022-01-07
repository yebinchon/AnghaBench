
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* _name; } ;
typedef TYPE_1__ DnsResourceKey ;


 scalar_t__ dns_name_is_root (char const*) ;

const char* dns_resource_key_name(const DnsResourceKey *key) {
        const char *name;

        if (!key)
                return ((void*)0);

        if (key->_name)
                name = key->_name;
        else
                name = (char*) key + sizeof(DnsResourceKey);

        if (dns_name_is_root(name))
                return ".";
        else
                return name;
}
