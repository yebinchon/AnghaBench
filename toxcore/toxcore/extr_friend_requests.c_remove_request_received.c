
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint32_t ;
struct TYPE_3__ {int * received_requests; } ;
typedef TYPE_1__ Friend_Requests ;


 size_t MAX_RECEIVED_STORED ;
 int crypto_box_PUBLICKEYBYTES ;
 scalar_t__ id_equal (int ,int const*) ;
 int sodium_memzero (int ,int ) ;

int remove_request_received(Friend_Requests *fr, const uint8_t *real_pk)
{
    uint32_t i;

    for (i = 0; i < MAX_RECEIVED_STORED; ++i) {
        if (id_equal(fr->received_requests[i], real_pk)) {
            sodium_memzero(fr->received_requests[i], crypto_box_PUBLICKEYBYTES);
            return 0;
        }
    }

    return -1;
}
