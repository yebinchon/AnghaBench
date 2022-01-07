
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_netlink_message ;


 int EINVAL ;
 int ENOMEM ;
 int NETLINK_TYPE_STRING ;
 int assert_return (int *,int ) ;
 int message_attribute_has_type (int *,int *,unsigned short,int ) ;
 int netlink_message_read_internal (int *,unsigned short,void**,int *) ;
 char* strndup (void*,int) ;

int sd_netlink_message_read_string_strdup(sd_netlink_message *m, unsigned short type, char **data) {
        void *attr_data;
        char *str;
        int r;

        assert_return(m, -EINVAL);

        r = message_attribute_has_type(m, ((void*)0), type, NETLINK_TYPE_STRING);
        if (r < 0)
                return r;

        r = netlink_message_read_internal(m, type, &attr_data, ((void*)0));
        if (r < 0)
                return r;

        if (data) {
                str = strndup(attr_data, r);
                if (!str)
                        return -ENOMEM;

                *data = str;
        }

        return 0;
}
