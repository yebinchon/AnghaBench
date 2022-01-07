
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
 scalar_t__ id_equal (int ,int const*) ;

__attribute__((used)) static int request_received(Friend_Requests *fr, const uint8_t *real_pk)
{
    uint32_t i;

    for (i = 0; i < MAX_RECEIVED_STORED; ++i)
        if (id_equal(fr->received_requests[i], real_pk))
            return 1;

    return 0;
}
