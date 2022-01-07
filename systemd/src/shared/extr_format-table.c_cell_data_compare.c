
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {size_t s_addr; } ;
struct TYPE_8__ {int in6; TYPE_1__ in; } ;
struct TYPE_9__ {int type; size_t timestamp; size_t timespan; size_t size; size_t int_val; size_t int8; size_t int16; size_t int32; size_t int64; size_t uint_val; size_t uint8; size_t uint16; size_t uint32; size_t uint64; size_t percent; size_t ifindex; TYPE_2__ address; int boolean; int string; } ;
typedef TYPE_3__ TableData ;


 int AF_INET6 ;
 int CMP (size_t,size_t) ;
 int FAMILY_ADDRESS_SIZE (int ) ;
 int assert (TYPE_3__*) ;
 int memcmp (int *,int *,int ) ;
 int strcmp (int ,int ) ;

__attribute__((used)) static int cell_data_compare(TableData *a, size_t index_a, TableData *b, size_t index_b) {
        assert(a);
        assert(b);

        if (a->type == b->type) {




                switch (a->type) {

                case 138:
                        return strcmp(a->string, b->string);

                case 150:
                        if (!a->boolean && b->boolean)
                                return -1;
                        if (a->boolean && !b->boolean)
                                return 1;
                        return 0;

                case 135:
                case 133:
                case 134:
                        return CMP(a->timestamp, b->timestamp);

                case 137:
                case 136:
                        return CMP(a->timespan, b->timespan);

                case 139:
                case 149:
                        return CMP(a->size, b->size);

                case 146:
                        return CMP(a->int_val, b->int_val);

                case 142:
                        return CMP(a->int8, b->int8);

                case 145:
                        return CMP(a->int16, b->int16);

                case 144:
                        return CMP(a->int32, b->int32);

                case 143:
                        return CMP(a->int64, b->int64);

                case 132:
                        return CMP(a->uint_val, b->uint_val);

                case 128:
                        return CMP(a->uint8, b->uint8);

                case 131:
                        return CMP(a->uint16, b->uint16);

                case 130:
                        return CMP(a->uint32, b->uint32);

                case 129:
                        return CMP(a->uint64, b->uint64);

                case 140:
                        return CMP(a->percent, b->percent);

                case 148:
                        return CMP(a->ifindex, b->ifindex);

                case 141:
                        return CMP(a->address.in.s_addr, b->address.in.s_addr);

                case 147:
                        return memcmp(&a->address.in6, &b->address.in6, FAMILY_ADDRESS_SIZE(AF_INET6));

                default:
                        ;
                }
        }


        return CMP(index_a, index_b);
}
