
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ intmax_t ;
typedef int i ;
struct TYPE_7__ {scalar_t__ integer; } ;
struct TYPE_8__ {TYPE_1__ value; } ;
typedef TYPE_2__ JsonVariant ;


 int EINVAL ;
 int JSON_VARIANT_INTEGER ;
 TYPE_2__* JSON_VARIANT_MAGIC_ZERO_INTEGER ;
 int assert_return (TYPE_2__**,int ) ;
 int json_variant_new (TYPE_2__**,int ,int) ;

int json_variant_new_integer(JsonVariant **ret, intmax_t i) {
        JsonVariant *v;
        int r;

        assert_return(ret, -EINVAL);

        if (i == 0) {
                *ret = JSON_VARIANT_MAGIC_ZERO_INTEGER;
                return 0;
        }

        r = json_variant_new(&v, JSON_VARIANT_INTEGER, sizeof(i));
        if (r < 0)
                return r;

        v->value.integer = i;
        *ret = v;

        return 0;
}
