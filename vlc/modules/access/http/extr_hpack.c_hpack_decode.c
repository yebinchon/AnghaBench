
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct hpack_decoder {int dummy; } ;


 int assert (int) ;
 int free (char*) ;
 int hpack_decode_hdr (struct hpack_decoder*,int const**,size_t*,char**,char**) ;

int hpack_decode(struct hpack_decoder *dec, const uint8_t *data,
                 size_t length, char *headers[][2], unsigned max)
{
    unsigned count = 0;

    while (length > 0)
    {
        char *name, *value;
        int val = hpack_decode_hdr(dec, &data, &length, &name, &value);
        if (val < 0)
            goto error;

        assert((name == ((void*)0)) == (value == ((void*)0)));
        if (name == ((void*)0))
            continue;

        if (count < max)
        {
            headers[count][0] = name;
            headers[count][1] = value;
        }
        else
        {
            free(value);
            free(name);
        }
        count++;
    }
    return count;

error:
    while (count > 0)
    {
        count--;
        free(headers[count][1]);
        free(headers[count][0]);
    }
    return -1;
}
