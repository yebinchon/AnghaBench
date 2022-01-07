
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpack_decoder {size_t max_size; scalar_t__ size; scalar_t__ entries; int * table; } ;


 struct hpack_decoder* malloc (int) ;

struct hpack_decoder *hpack_decode_init(size_t header_table_size)
{
    struct hpack_decoder *dec = malloc(sizeof (*dec));
    if (dec == ((void*)0))
        return ((void*)0);

    dec->table = ((void*)0);
    dec->entries = 0;
    dec->size = 0;
    dec->max_size = header_table_size;
    return dec;
}
