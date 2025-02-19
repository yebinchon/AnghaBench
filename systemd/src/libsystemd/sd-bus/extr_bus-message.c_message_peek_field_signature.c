
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef size_t sd_bus_message ;


 scalar_t__ BUS_MESSAGE_IS_GVARIANT (size_t*) ;
 int EBADMSG ;
 size_t UINT8_MAX ;
 int assert (size_t*) ;
 int message_peek_fields (size_t*,size_t*,int,size_t,void**) ;
 int validate_signature (void*,size_t) ;

__attribute__((used)) static int message_peek_field_signature(
                sd_bus_message *m,
                size_t *ri,
                size_t item_size,
                const char **ret) {

        size_t l;
        int r;
        void *q;

        assert(m);
        assert(ri);

        if (BUS_MESSAGE_IS_GVARIANT(m)) {

                if (item_size <= 0)
                        return -EBADMSG;

                r = message_peek_fields(m, ri, 1, item_size, &q);
                if (r < 0)
                        return r;

                l = item_size - 1;
        } else {
                r = message_peek_fields(m, ri, 1, 1, &q);
                if (r < 0)
                        return r;

                l = *(uint8_t*) q;
                if (l == UINT8_MAX)

                        return -EBADMSG;

                r = message_peek_fields(m, ri, 1, l+1, &q);
                if (r < 0)
                        return r;
        }

        if (!validate_signature(q, l))
                return -EBADMSG;

        if (ret)
                *ret = q;

        return 0;
}
