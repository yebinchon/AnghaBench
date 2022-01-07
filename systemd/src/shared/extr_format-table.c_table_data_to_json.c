
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; size_t timestamp; size_t timespan; size_t size; size_t uint_val; size_t uint8; size_t uint16; size_t uint32; size_t uint64; int address; int ifindex; int percent; int int64; int int32; int int16; int int8; int int_val; int boolean; int string; } ;
typedef TYPE_1__ TableData ;
typedef int JsonVariant ;


 int AF_INET ;
 int AF_INET6 ;
 int EINVAL ;
 int FAMILY_ADDRESS_SIZE (int ) ;
 size_t USEC_INFINITY ;
 int json_variant_new_array_bytes (int **,int *,int ) ;
 int json_variant_new_boolean (int **,int ) ;
 int json_variant_new_integer (int **,int ) ;
 int json_variant_new_null (int **) ;
 int json_variant_new_string (int **,int ) ;
 int json_variant_new_unsigned (int **,size_t) ;

__attribute__((used)) static int table_data_to_json(TableData *d, JsonVariant **ret) {

        switch (d->type) {

        case 149:
                return json_variant_new_null(ret);

        case 138:
                return json_variant_new_string(ret, d->string);

        case 151:
                return json_variant_new_boolean(ret, d->boolean);

        case 135:
        case 133:
        case 134:
                if (d->timestamp == USEC_INFINITY)
                        return json_variant_new_null(ret);

                return json_variant_new_unsigned(ret, d->timestamp);

        case 137:
        case 136:
                if (d->timespan == USEC_INFINITY)
                        return json_variant_new_null(ret);

                return json_variant_new_unsigned(ret, d->timespan);

        case 139:
        case 150:
                if (d->size == (size_t) -1)
                        return json_variant_new_null(ret);

                return json_variant_new_unsigned(ret, d->size);

        case 146:
                return json_variant_new_integer(ret, d->int_val);

        case 142:
                return json_variant_new_integer(ret, d->int8);

        case 145:
                return json_variant_new_integer(ret, d->int16);

        case 144:
                return json_variant_new_integer(ret, d->int32);

        case 143:
                return json_variant_new_integer(ret, d->int64);

        case 132:
                return json_variant_new_unsigned(ret, d->uint_val);

        case 128:
                return json_variant_new_unsigned(ret, d->uint8);

        case 131:
                return json_variant_new_unsigned(ret, d->uint16);

        case 130:
                return json_variant_new_unsigned(ret, d->uint32);

        case 129:
                return json_variant_new_unsigned(ret, d->uint64);

        case 140:
                return json_variant_new_integer(ret, d->percent);

        case 148:
                return json_variant_new_integer(ret, d->ifindex);

        case 141:
                return json_variant_new_array_bytes(ret, &d->address, FAMILY_ADDRESS_SIZE(AF_INET));

        case 147:
                return json_variant_new_array_bytes(ret, &d->address, FAMILY_ADDRESS_SIZE(AF_INET6));

        default:
                return -EINVAL;
        }
}
