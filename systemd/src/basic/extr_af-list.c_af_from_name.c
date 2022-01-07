
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct af_name {int id; } ;


 int EINVAL ;
 int assert (char const*) ;
 struct af_name* lookup_af (char const*,int ) ;
 int strlen (char const*) ;

int af_from_name(const char *name) {
        const struct af_name *sc;

        assert(name);

        sc = lookup_af(name, strlen(name));
        if (!sc)
                return -EINVAL;

        return sc->id;
}
