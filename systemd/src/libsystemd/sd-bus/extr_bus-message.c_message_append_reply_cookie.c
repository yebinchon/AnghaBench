
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef int sd_bus_message ;


 int BUS_MESSAGE_HEADER_REPLY_SERIAL ;
 scalar_t__ BUS_MESSAGE_IS_GVARIANT (int *) ;
 int EOPNOTSUPP ;
 int assert (int *) ;
 int message_append_field_uint32 (int *,int ,int ) ;
 int message_append_field_uint64 (int *,int ,int) ;

__attribute__((used)) static int message_append_reply_cookie(sd_bus_message *m, uint64_t cookie) {
        assert(m);

        if (BUS_MESSAGE_IS_GVARIANT(m))
                return message_append_field_uint64(m, BUS_MESSAGE_HEADER_REPLY_SERIAL, cookie);
        else {

                if (cookie > 0xffffffffUL)
                        return -EOPNOTSUPP;

                return message_append_field_uint32(m, BUS_MESSAGE_HEADER_REPLY_SERIAL, (uint32_t) cookie);
        }
}
