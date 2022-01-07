
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef size_t sd_bus_message ;


 int BUS_MESSAGE_BSWAP64 (size_t*,int ) ;
 scalar_t__ BUS_MESSAGE_IS_GVARIANT (size_t*) ;
 int EBADMSG ;
 int assert (size_t*) ;
 int message_peek_fields (size_t*,size_t*,int,int,void**) ;

__attribute__((used)) static int message_peek_field_uint64(
                sd_bus_message *m,
                size_t *ri,
                size_t item_size,
                uint64_t *ret) {

        int r;
        void *q;

        assert(m);
        assert(ri);

        if (BUS_MESSAGE_IS_GVARIANT(m) && item_size != 8)
                return -EBADMSG;



        r = message_peek_fields(m, ri, 8, 8, &q);
        if (r < 0)
                return r;

        if (ret)
                *ret = BUS_MESSAGE_BSWAP64(m, *(uint64_t*) q);

        return 0;
}
