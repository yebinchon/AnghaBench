
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct capability_name {int id; } ;


 int EINVAL ;
 size_t ELEMENTSOF (int ) ;
 int assert (char const*) ;
 int capability_names ;
 struct capability_name* lookup_capability (char const*,int ) ;
 int safe_atoi (char const*,int*) ;
 int strlen (char const*) ;

int capability_from_name(const char *name) {
        const struct capability_name *sc;
        int r, i;

        assert(name);


        r = safe_atoi(name, &i);
        if (r >= 0) {
                if (i >= 0 && (size_t) i < ELEMENTSOF(capability_names))
                        return i;
                else
                        return -EINVAL;
        }


        sc = lookup_capability(name, strlen(name));
        if (!sc)
                return -EINVAL;

        return sc->id;
}
