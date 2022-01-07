
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uintmax_t ;
typedef scalar_t__ intmax_t ;
struct TYPE_8__ {long double real; scalar_t__ unsig; scalar_t__ integer; } ;
struct TYPE_9__ {int type; TYPE_1__ value; struct TYPE_9__* reference; scalar_t__ is_reference; } ;
typedef TYPE_2__ JsonVariant ;



 TYPE_2__* JSON_VARIANT_MAGIC_ZERO_INTEGER ;
 TYPE_2__* JSON_VARIANT_MAGIC_ZERO_REAL ;
 TYPE_2__* JSON_VARIANT_MAGIC_ZERO_UNSIGNED ;


 int json_variant_is_regular (TYPE_2__*) ;
 int log_debug (char*,...) ;

long double json_variant_real(JsonVariant *v) {
        if (!v)
                return 0.0;
        if (v == JSON_VARIANT_MAGIC_ZERO_INTEGER ||
            v == JSON_VARIANT_MAGIC_ZERO_UNSIGNED ||
            v == JSON_VARIANT_MAGIC_ZERO_REAL)
                return 0.0;
        if (!json_variant_is_regular(v))
                goto mismatch;
        if (v->is_reference)
                return json_variant_real(v->reference);

        switch (v->type) {

        case 129:
                return v->value.real;

        case 130: {
                long double converted;

                converted = (long double) v->value.integer;

                if ((intmax_t) converted == v->value.integer)
                        return converted;

                log_debug("Signed integer %ji requested as real, and cannot be converted losslessly, returning 0.", v->value.integer);
                return 0.0;
        }

        case 128: {
                long double converted;

                converted = (long double) v->value.unsig;

                if ((uintmax_t) converted == v->value.unsig)
                        return converted;

                log_debug("Unsigned integer %ju requested as real, and cannot be converted losslessly, returning 0.", v->value.unsig);
                return 0.0;
        }

        default:
                break;
        }

mismatch:
        log_debug("Non-integer JSON variant requested as integer, returning 0.");
        return 0.0;
}
