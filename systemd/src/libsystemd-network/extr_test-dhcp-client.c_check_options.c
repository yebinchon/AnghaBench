
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct duid {int dummy; } ;
typedef struct duid uint32_t ;
typedef int iaid ;


 int ETH_ALEN ;

 int assert_se (int) ;
 int dhcp_identifier_set_duid_en (struct duid*,size_t*) ;
 int dhcp_identifier_set_iaid (int,int ,int ,int,struct duid*) ;
 int mac_addr ;
 int memcmp (int*,struct duid*,size_t) ;

__attribute__((used)) static int check_options(uint8_t code, uint8_t len, const void *option, void *userdata) {
        switch(code) {
        case 128:
        {
                uint32_t iaid;
                struct duid duid;
                size_t duid_len;

                assert_se(dhcp_identifier_set_duid_en(&duid, &duid_len) >= 0);
                assert_se(dhcp_identifier_set_iaid(42, mac_addr, ETH_ALEN, 1, &iaid) >= 0);

                assert_se(len == sizeof(uint8_t) + sizeof(uint32_t) + duid_len);
                assert_se(len == 19);
                assert_se(((uint8_t*) option)[0] == 0xff);

                assert_se(memcmp((uint8_t*) option + 1, &iaid, sizeof(iaid)) == 0);
                assert_se(memcmp((uint8_t*) option + 5, &duid, duid_len) == 0);
                break;
        }

        default:
                break;
        }

        return 0;
}
