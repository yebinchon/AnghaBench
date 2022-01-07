
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SEQ_stream ;
typedef int SEQ_outBuffer ;
typedef int SEQ_gen_type ;


 size_t SEQ_gen_litLength (int *,unsigned int,int *) ;

 size_t SEQ_gen_matchLength (int *,unsigned int,int *) ;



 size_t SEQ_gen_offset (int *,unsigned int,int *) ;

size_t SEQ_gen(SEQ_stream* stream, SEQ_gen_type type, unsigned value, SEQ_outBuffer* out)
{
    switch (type) {
        case 129: return SEQ_gen_matchLength(stream, value, out);
        case 131: return SEQ_gen_litLength(stream, value, out);
        case 128: return SEQ_gen_offset(stream, value, out);
        case 130:
        default: return 0;
    }
}
