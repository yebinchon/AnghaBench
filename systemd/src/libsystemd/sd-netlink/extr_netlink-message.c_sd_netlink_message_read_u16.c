
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int sd_netlink_message ;


 int EINVAL ;
 int EIO ;
 int NETLINK_TYPE_U16 ;
 int assert_return (int *,int ) ;
 int be16toh (int ) ;
 int message_attribute_has_type (int *,int *,unsigned short,int ) ;
 int netlink_message_read_internal (int *,unsigned short,void**,int*) ;

int sd_netlink_message_read_u16(sd_netlink_message *m, unsigned short type, uint16_t *data) {
        void *attr_data;
        bool net_byteorder;
        int r;

        assert_return(m, -EINVAL);

        r = message_attribute_has_type(m, ((void*)0), type, NETLINK_TYPE_U16);
        if (r < 0)
                return r;

        r = netlink_message_read_internal(m, type, &attr_data, &net_byteorder);
        if (r < 0)
                return r;
        else if ((size_t) r < sizeof(uint16_t))
                return -EIO;

        if (data) {
                if (net_byteorder)
                        *data = be16toh(*(uint16_t *) attr_data);
                else
                        *data = *(uint16_t *) attr_data;
        }

        return 0;
}
