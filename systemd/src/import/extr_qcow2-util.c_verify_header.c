
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ incompatible_features; } ;
typedef TYPE_1__ Header ;


 int EBADMSG ;
 int EOPNOTSUPP ;
 int HEADER_CLUSTER_BITS (TYPE_1__ const*) ;
 int HEADER_CLUSTER_SIZE (TYPE_1__ const*) ;
 scalar_t__ HEADER_CRYPT_METHOD (TYPE_1__ const*) ;
 int HEADER_HEADER_LENGTH (TYPE_1__ const*) ;
 int HEADER_L1_SIZE (TYPE_1__ const*) ;
 scalar_t__ HEADER_MAGIC (TYPE_1__ const*) ;
 int HEADER_SIZE (TYPE_1__ const*) ;
 int HEADER_VERSION (TYPE_1__ const*) ;
 int IN_SET (int,int,int) ;
 scalar_t__ QCOW2_MAGIC ;
 int assert (TYPE_1__ const*) ;

__attribute__((used)) static int verify_header(const Header *header) {
        assert(header);

        if (HEADER_MAGIC(header) != QCOW2_MAGIC)
                return -EBADMSG;

        if (!IN_SET(HEADER_VERSION(header), 2, 3))
                return -EOPNOTSUPP;

        if (HEADER_CRYPT_METHOD(header) != 0)
                return -EOPNOTSUPP;

        if (HEADER_CLUSTER_BITS(header) < 9)
                return -EBADMSG;

        if (HEADER_CLUSTER_BITS(header) > 21)
                return -EBADMSG;

        if (HEADER_SIZE(header) % HEADER_CLUSTER_SIZE(header) != 0)
                return -EBADMSG;

        if (HEADER_L1_SIZE(header) > 32*1024*1024)
                return -EBADMSG;

        if (HEADER_VERSION(header) == 3) {

                if (header->incompatible_features != 0)
                        return -EOPNOTSUPP;

                if (HEADER_HEADER_LENGTH(header) < sizeof(Header))
                        return -EBADMSG;
        }

        return 0;
}
