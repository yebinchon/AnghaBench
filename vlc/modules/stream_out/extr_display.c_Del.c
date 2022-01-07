
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sout_stream_t ;
typedef int decoder_t ;


 int input_DecoderDelete (int *) ;

__attribute__((used)) static void Del( sout_stream_t *p_stream, void *id )
{
    (void) p_stream;
    input_DecoderDelete( (decoder_t *)id );
}
