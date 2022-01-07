
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct decoder_owner {int * packetizer; } ;
typedef int decoder_t ;


 struct decoder_owner* dec_get_owner (int *) ;
 int decoder_Destroy (int *) ;

void test_decoder_destroy(decoder_t *decoder)
{
    struct decoder_owner *owner = dec_get_owner(decoder);

    decoder_Destroy(owner->packetizer);
    decoder_Destroy(decoder);
}
