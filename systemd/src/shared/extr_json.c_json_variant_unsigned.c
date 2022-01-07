
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uintmax_t ;
struct TYPE_8__ {long double real; scalar_t__ unsig; int integer; } ;
struct TYPE_9__ {int type; TYPE_1__ value; int reference; scalar_t__ is_reference; } ;
typedef TYPE_2__ JsonVariant ;



 TYPE_2__* JSON_VARIANT_MAGIC_ZERO_INTEGER ;
 TYPE_2__* JSON_VARIANT_MAGIC_ZERO_REAL ;
 TYPE_2__* JSON_VARIANT_MAGIC_ZERO_UNSIGNED ;


 scalar_t__ json_variant_integer (int ) ;
 int json_variant_is_regular (TYPE_2__*) ;
 int log_debug (char*,...) ;

uintmax_t json_variant_unsigned(JsonVariant *v) {
        if (!v)
                goto mismatch;
        if (v == JSON_VARIANT_MAGIC_ZERO_INTEGER ||
            v == JSON_VARIANT_MAGIC_ZERO_UNSIGNED ||
            v == JSON_VARIANT_MAGIC_ZERO_REAL)
                return 0;
        if (!json_variant_is_regular(v))
                goto mismatch;
        if (v->is_reference)
                return json_variant_integer(v->reference);

        switch (v->type) {

        case 130:
                if (v->value.integer >= 0)
                        return (uintmax_t) v->value.integer;

                log_debug("Signed integer %ju requested as unsigned integer and out of range, returning 0.", v->value.integer);
                return 0;

        case 128:
                return v->value.unsig;

        case 129: {
                uintmax_t converted;

                converted = (uintmax_t) v->value.real;

#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wfloat-equal"
 if ((long double) converted == v->value.real)
#pragma GCC diagnostic pop
 return converted;

                log_debug("Real %Lg requested as unsigned integer, and cannot be converted losslessly, returning 0.", v->value.real);
                return 0;
        }

        default:
                break;
        }

mismatch:
        log_debug("Non-integer JSON variant requested as unsigned, returning 0.");
        return 0;
}
