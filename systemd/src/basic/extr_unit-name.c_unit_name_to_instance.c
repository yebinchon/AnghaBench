
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int ENOMEM ;
 int UNIT_NAME_ANY ;
 int UNIT_NAME_INSTANCE ;
 int UNIT_NAME_PLAIN ;
 int UNIT_NAME_TEMPLATE ;
 int assert (char const*) ;
 char* strchr (char const*,char) ;
 char* strndup (char const*,int) ;
 char* strrchr (char const*,char) ;
 int unit_name_is_valid (char const*,int ) ;

int unit_name_to_instance(const char *n, char **ret) {
        const char *p, *d;

        assert(n);

        if (!unit_name_is_valid(n, UNIT_NAME_ANY))
                return -EINVAL;


        p = strchr(n, '@');
        if (!p) {
                if (ret)
                        *ret = ((void*)0);
                return UNIT_NAME_PLAIN;
        }

        p++;

        d = strrchr(p, '.');
        if (!d)
                return -EINVAL;

        if (ret) {
                char *i = strndup(p, d-p);
                if (!i)
                        return -ENOMEM;

                *ret = i;
        }
        return d > p ? UNIT_NAME_INSTANCE : UNIT_NAME_TEMPLATE;
}
