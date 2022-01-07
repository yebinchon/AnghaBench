
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arphrd_name {int id; } ;


 int EINVAL ;
 int assert (char const*) ;
 struct arphrd_name* lookup_arphrd (char const*,int ) ;
 int strlen (char const*) ;

int arphrd_from_name(const char *name) {
        const struct arphrd_name *sc;

        assert(name);

        sc = lookup_arphrd(name, strlen(name));
        if (!sc)
                return -EINVAL;

        return sc->id;
}
