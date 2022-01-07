
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_protocol_name {int id; } ;


 int EINVAL ;
 int assert (char const*) ;
 struct ip_protocol_name* lookup_ip_protocol (char const*,int ) ;
 int strlen (char const*) ;

int ip_protocol_from_name(const char *name) {
        const struct ip_protocol_name *sc;

        assert(name);

        sc = lookup_ip_protocol(name, strlen(name));
        if (!sc)
                return -EINVAL;

        return sc->id;
}
