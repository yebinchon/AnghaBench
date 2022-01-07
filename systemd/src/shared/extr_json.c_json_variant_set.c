
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {int boolean; int real; int unsig; int integer; } ;
struct TYPE_16__ {int type; int is_reference; int reference; int string; TYPE_1__ value; } ;
typedef TYPE_2__ JsonVariant ;


 int INLINE_STRING_MAX ;
 int _fallthrough_ ;
 int assert (TYPE_2__*) ;
 int assert_not_reached (char*) ;
 int assert_se (char const*) ;
 int json_variant_boolean (TYPE_2__*) ;
 int json_variant_conservative_normalize (TYPE_2__*) ;
 TYPE_2__* json_variant_dereference (TYPE_2__*) ;
 int json_variant_integer (TYPE_2__*) ;
 int json_variant_real (TYPE_2__*) ;
 int json_variant_ref (int ) ;
 char* json_variant_string (TYPE_2__*) ;
 int json_variant_type (TYPE_2__*) ;
 int json_variant_unsigned (TYPE_2__*) ;
 int strcpy (int ,char const*) ;
 int strnlen (char const*,int ) ;

__attribute__((used)) static void json_variant_set(JsonVariant *a, JsonVariant *b) {
        assert(a);

        b = json_variant_dereference(b);
        if (!b) {
                a->type = 132;
                return;
        }

        a->type = json_variant_type(b);
        switch (a->type) {

        case 133:
                a->value.integer = json_variant_integer(b);
                break;

        case 128:
                a->value.unsig = json_variant_unsigned(b);
                break;

        case 130:
                a->value.real = json_variant_real(b);
                break;

        case 134:
                a->value.boolean = json_variant_boolean(b);
                break;

        case 129: {
                const char *s;

                assert_se(s = json_variant_string(b));


                if (strnlen(s, INLINE_STRING_MAX+1) <= INLINE_STRING_MAX) {
                        strcpy(a->string, s);
                        break;
                }


                _fallthrough_;
        }

        case 135:
        case 131:
                a->is_reference = 1;
                a->reference = json_variant_ref(json_variant_conservative_normalize(b));
                break;

        case 132:
                break;

        default:
                assert_not_reached("Unexpected variant type");
        }
}
