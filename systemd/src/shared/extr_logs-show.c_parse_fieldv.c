
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int target_len; int target; int field_len; int field; } ;
typedef TYPE_1__ ParseFieldVec ;


 int parse_field (void const*,size_t,int ,int ,int ,int ) ;

__attribute__((used)) static int parse_fieldv(const void *data, size_t length, const ParseFieldVec *fields, unsigned n_fields) {
        unsigned i;

        for (i = 0; i < n_fields; i++) {
                const ParseFieldVec *f = &fields[i];
                int r;

                r = parse_field(data, length, f->field, f->field_len, f->target, f->target_len);
                if (r < 0)
                        return r;
                else if (r > 0)
                        break;
        }

        return 0;
}
