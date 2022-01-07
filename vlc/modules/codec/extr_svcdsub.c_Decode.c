
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int subpicture_t ;
typedef int decoder_t ;
typedef int block_t ;


 int * DecodePacket (int *,int *) ;
 int * Reassemble (int *,int *) ;
 int VLCDEC_SUCCESS ;
 int decoder_QueueSub (int *,int *) ;
 int msg_Dbg (int *,char*) ;

__attribute__((used)) static int Decode( decoder_t *p_dec, block_t *p_block )
{

    msg_Dbg( p_dec, "Decode" );


    if( p_block == ((void*)0) )
        return VLCDEC_SUCCESS;

    if( !(p_block = Reassemble( p_dec, p_block )) )
        return VLCDEC_SUCCESS;


    subpicture_t *p_spu = DecodePacket( p_dec, p_block );
    if( p_spu != ((void*)0) )
        decoder_QueueSub( p_dec, p_spu );
    return VLCDEC_SUCCESS;
}
