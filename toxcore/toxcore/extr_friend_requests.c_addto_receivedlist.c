
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {size_t received_requests_index; int * received_requests; } ;
typedef TYPE_1__ Friend_Requests ;


 size_t MAX_RECEIVED_STORED ;
 int id_copy (int ,int const*) ;

__attribute__((used)) static void addto_receivedlist(Friend_Requests *fr, const uint8_t *real_pk)
{
    if (fr->received_requests_index >= MAX_RECEIVED_STORED)
        fr->received_requests_index = 0;

    id_copy(fr->received_requests[fr->received_requests_index], real_pk);
    ++fr->received_requests_index;
}
