
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct hpack_decoder {size_t max_size; } ;
typedef size_t int_fast32_t ;


 int EINVAL ;
 int errno ;
 int hpack_decode_evict (struct hpack_decoder*) ;
 size_t hpack_decode_int (int,int const**,size_t*) ;

__attribute__((used)) static int hpack_decode_tbl_update(struct hpack_decoder *dec,
                                   const uint8_t **restrict datap,
                                   size_t *restrict lengthp,
                                   char **restrict name,
                                   char **restrict value)
{
    int_fast32_t max = hpack_decode_int(5, datap, lengthp);
    if (max < 0)
        return -1;

    if ((size_t)max > dec->max_size)
    {
        errno = EINVAL;
        return -1;
    }

    *value = *name = ((void*)0);
    dec->max_size = max;
    hpack_decode_evict(dec);
    return 0;
}
