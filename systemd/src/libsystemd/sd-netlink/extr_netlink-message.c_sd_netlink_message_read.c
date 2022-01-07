
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_netlink_message ;


 int EINVAL ;
 int EIO ;
 int assert_return (int *,int ) ;
 int memcpy (void*,void*,size_t) ;
 int netlink_message_read_internal (int *,unsigned short,void**,int *) ;

int sd_netlink_message_read(sd_netlink_message *m, unsigned short type, size_t size, void *data) {
        void *attr_data;
        int r;

        assert_return(m, -EINVAL);

        r = netlink_message_read_internal(m, type, &attr_data, ((void*)0));
        if (r < 0)
                return r;

        if ((size_t) r < size)
                return -EIO;

        if (data)
                memcpy(data, attr_data, size);

        return r;
}
