
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int be32_t ;
struct TYPE_4__ {int* data; int length; } ;
struct TYPE_5__ {int max_optlen; TYPE_1__ client_id; int server_id; int requested_ip; int lifetime; } ;
typedef TYPE_2__ DHCPRequest ;
typedef int DHCPPacket ;


 int ENOMEM ;





 int assert (TYPE_2__*) ;
 int free (int*) ;
 int memcpy (int *,void const*,int) ;
 int* memdup (void const*,int) ;
 int unaligned_read_be16 (void const*) ;
 int unaligned_read_be32 (void const*) ;

__attribute__((used)) static int parse_request(uint8_t code, uint8_t len, const void *option, void *userdata) {
        DHCPRequest *req = userdata;

        assert(req);

        switch(code) {
        case 131:
                if (len == 4)
                        req->lifetime = unaligned_read_be32(option);

                break;
        case 129:
                if (len == 4)
                        memcpy(&req->requested_ip, option, sizeof(be32_t));

                break;
        case 128:
                if (len == 4)
                        memcpy(&req->server_id, option, sizeof(be32_t));

                break;
        case 132:
                if (len >= 2) {
                        uint8_t *data;

                        data = memdup(option, len);
                        if (!data)
                                return -ENOMEM;

                        free(req->client_id.data);
                        req->client_id.data = data;
                        req->client_id.length = len;
                }

                break;
        case 130:

                if (len == 2 && unaligned_read_be16(option) >= sizeof(DHCPPacket))
                        req->max_optlen = unaligned_read_be16(option) - sizeof(DHCPPacket);

                break;
        }

        return 0;
}
