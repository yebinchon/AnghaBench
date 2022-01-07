
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct output_stream {int dummy; } ;


 int write_byte (struct output_stream*,int ) ;

__attribute__((used)) static int write_data(void *user_ptr, void *user_data, int length)
{
    unsigned char *data = user_data;
    struct output_stream *out = user_ptr;
    int len = length;

    while (len-- > 0)
    {
        if (!write_byte(out, *data++)) return 0;
    }

    return length;
}
