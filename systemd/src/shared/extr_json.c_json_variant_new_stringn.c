
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__* string; } ;
typedef TYPE_1__ JsonVariant ;


 int EINVAL ;
 TYPE_1__** IN_SET (size_t,int ,size_t) ;
 TYPE_1__* JSON_VARIANT_MAGIC_EMPTY_STRING ;
 int JSON_VARIANT_STRING ;
 int assert_return (TYPE_1__**,int) ;
 int json_variant_new (TYPE_1__**,int ,size_t) ;
 int json_variant_new_null (TYPE_1__**) ;
 scalar_t__ memchr (char const*,int ,size_t) ;
 int memcpy (scalar_t__*,char const*,size_t) ;
 size_t strlen (char const*) ;

int json_variant_new_stringn(JsonVariant **ret, const char *s, size_t n) {
        JsonVariant *v;
        int r;

        assert_return(ret, -EINVAL);
        if (!s) {
                assert_return(IN_SET(n, 0, (size_t) -1), -EINVAL);
                return json_variant_new_null(ret);
        }
        if (n == (size_t) -1)
                n = strlen(s);
        else if (memchr(s, 0, n))
                return -EINVAL;
        if (n == 0) {
                *ret = JSON_VARIANT_MAGIC_EMPTY_STRING;
                return 0;
        }

        r = json_variant_new(&v, JSON_VARIANT_STRING, n + 1);
        if (r < 0)
                return r;

        memcpy(v->string, s, n);
        v->string[n] = 0;

        *ret = v;
        return 0;
}
