
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct hpack_decoder {int dummy; } ;
typedef scalar_t__ int_fast32_t ;


 int free (char*) ;
 scalar_t__ hpack_decode_int (int,int const**,size_t*) ;
 char* hpack_decode_str (int const**,size_t*) ;
 char* hpack_lookup_name (struct hpack_decoder*,scalar_t__) ;

__attribute__((used)) static int hpack_decode_hdr_noindex(struct hpack_decoder *dec,
                                    const uint8_t **restrict datap,
                                    size_t *restrict lengthp,
                                    char **restrict namep,
                                    char **restrict valuep)
{
    int_fast32_t idx = hpack_decode_int(4, datap, lengthp);
    if (idx < 0)
        return -1;

    char *name;

    if (idx != 0)
        name = hpack_lookup_name(dec, idx);
    else
        name = hpack_decode_str(datap, lengthp);
    if (name == ((void*)0))
        return -1;

    char *value = hpack_decode_str(datap, lengthp);
    if (value == ((void*)0))
    {
        free(name);
        return -1;
    }

    *namep = name;
    *valuep = value;
    return 0;
}
