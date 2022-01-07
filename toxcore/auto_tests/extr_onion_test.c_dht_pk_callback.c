
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
typedef scalar_t__ int32_t ;
struct TYPE_4__ {TYPE_1__* onion; } ;
struct TYPE_3__ {int dht; } ;
typedef TYPE_2__ Onions ;


 int DHT_addfriend (int ,int const*,int *,void*,scalar_t__,int*) ;
 scalar_t__ NUM_FIRST ;
 scalar_t__ NUM_LAST ;
 int ck_abort_msg (char*) ;
 int ck_assert_msg (int,char*,...) ;
 int crypto_box_PUBLICKEYBYTES ;
 int dht_ip_callback ;
 int first ;
 int first_dht_pk ;
 int last ;
 int last_dht_pk ;
 scalar_t__ memcmp (int const*,int ,int ) ;

__attribute__((used)) static void dht_pk_callback(void *object, int32_t number, const uint8_t *dht_public_key)
{
    if ((NUM_FIRST == number && !first) || (NUM_LAST == number && !last)) {
        Onions *on = object;
        uint16_t count = 0;
        int ret = DHT_addfriend(on->onion->dht, dht_public_key, &dht_ip_callback, object, number, &count);
        ck_assert_msg(ret == 0, "DHT_addfriend() did not return 0");
        ck_assert_msg(count == 1, "Count not 1, count is %u", count);

        if (NUM_FIRST == number && !first) {
            first = 1;

            if (memcmp(dht_public_key, last_dht_pk, crypto_box_PUBLICKEYBYTES) != 0) {
                ck_abort_msg("Error wrong dht key.");
            }

            return;
        }

        if (NUM_LAST == number && !last) {
            last = 1;

            if (memcmp(dht_public_key, first_dht_pk, crypto_box_PUBLICKEYBYTES) != 0) {
                ck_abort_msg("Error wrong dht key.");
            }

            return;
        }

        ck_abort_msg("Error.");
    }
}
