
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uintmax_t ;
typedef int u ;
struct TYPE_7__ {scalar_t__ unsig; } ;
struct TYPE_8__ {TYPE_1__ value; } ;
typedef TYPE_2__ JsonVariant ;


 int EINVAL ;
 TYPE_2__* JSON_VARIANT_MAGIC_ZERO_UNSIGNED ;
 int JSON_VARIANT_UNSIGNED ;
 int assert_return (TYPE_2__**,int ) ;
 int json_variant_new (TYPE_2__**,int ,int) ;

int json_variant_new_unsigned(JsonVariant **ret, uintmax_t u) {
        JsonVariant *v;
        int r;

        assert_return(ret, -EINVAL);
        if (u == 0) {
                *ret = JSON_VARIANT_MAGIC_ZERO_UNSIGNED;
                return 0;
        }

        r = json_variant_new(&v, JSON_VARIANT_UNSIGNED, sizeof(u));
        if (r < 0)
                return r;

        v->value.unsig = u;
        *ret = v;

        return 0;
}
