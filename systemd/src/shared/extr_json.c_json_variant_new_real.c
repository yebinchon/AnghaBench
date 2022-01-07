
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int d ;
struct TYPE_7__ {long double real; } ;
struct TYPE_8__ {TYPE_1__ value; } ;
typedef TYPE_2__ JsonVariant ;


 int EINVAL ;
 TYPE_2__* JSON_VARIANT_MAGIC_ZERO_REAL ;
 int JSON_VARIANT_REAL ;
 int assert_return (TYPE_2__**,int ) ;
 int json_variant_new (TYPE_2__**,int ,int) ;

int json_variant_new_real(JsonVariant **ret, long double d) {
        JsonVariant *v;
        int r;

        assert_return(ret, -EINVAL);

#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wfloat-equal"
 if (d == 0.0) {
#pragma GCC diagnostic pop
 *ret = JSON_VARIANT_MAGIC_ZERO_REAL;
                return 0;
        }

        r = json_variant_new(&v, JSON_VARIANT_REAL, sizeof(d));
        if (r < 0)
                return r;

        v->value.real = d;
        *ret = v;

        return 0;
}
