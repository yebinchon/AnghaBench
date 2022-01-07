
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void Set ;


 int assert (void*) ;
 int free (void*) ;
 int set_put (void*,void*) ;

int set_consume(Set *s, void *value) {
        int r;

        assert(s);
        assert(value);

        r = set_put(s, value);
        if (r <= 0)
                free(value);

        return r;
}
