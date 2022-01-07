
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifa_cacheinfo {int dummy; } ;
typedef int sd_netlink_message ;


 int EINVAL ;
 int EIO ;
 int NETLINK_TYPE_CACHE_INFO ;
 int assert_return (int *,int ) ;
 int memcpy (struct ifa_cacheinfo*,void*,int) ;
 int message_attribute_has_type (int *,int *,unsigned short,int ) ;
 int netlink_message_read_internal (int *,unsigned short,void**,int *) ;

int sd_netlink_message_read_cache_info(sd_netlink_message *m, unsigned short type, struct ifa_cacheinfo *info) {
        int r;
        void *attr_data;

        assert_return(m, -EINVAL);

        r = message_attribute_has_type(m, ((void*)0), type, NETLINK_TYPE_CACHE_INFO);
        if (r < 0)
                return r;

        r = netlink_message_read_internal(m, type, &attr_data, ((void*)0));
        if (r < 0)
                return r;
        else if ((size_t)r < sizeof(struct ifa_cacheinfo))
                return -EIO;

        if (info)
                memcpy(info, attr_data, sizeof(struct ifa_cacheinfo));

        return 0;
}
