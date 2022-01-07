
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_netlink_message ;


 int EINVAL ;
 int EIO ;
 int NETLINK_TYPE_STRING ;
 int assert_return (int *,int ) ;
 int message_attribute_has_type (int *,int *,unsigned short,int ) ;
 int netlink_message_read_internal (int *,unsigned short,void**,int *) ;
 size_t strnlen (void*,int) ;

int sd_netlink_message_read_string(sd_netlink_message *m, unsigned short type, const char **data) {
        int r;
        void *attr_data;

        assert_return(m, -EINVAL);

        r = message_attribute_has_type(m, ((void*)0), type, NETLINK_TYPE_STRING);
        if (r < 0)
                return r;

        r = netlink_message_read_internal(m, type, &attr_data, ((void*)0));
        if (r < 0)
                return r;
        else if (strnlen(attr_data, r) >= (size_t) r)
                return -EIO;

        if (data)
                *data = (const char *) attr_data;

        return 0;
}
