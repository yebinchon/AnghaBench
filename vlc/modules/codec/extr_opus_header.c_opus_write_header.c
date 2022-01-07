
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
typedef int header_data ;
typedef int OpusHeader ;


 unsigned int ARRAY_SIZE (unsigned char const**) ;
 scalar_t__ comment_add (char**,size_t*,char*,char*) ;
 char* comment_init (size_t*,char const*) ;
 scalar_t__ comment_pad (char**,size_t*) ;
 int free (char*) ;
 int opus_header_to_packet (int *,unsigned char*,int) ;
 scalar_t__ xiph_AppendHeaders (int*,void**,size_t,unsigned char const*) ;

int opus_write_header(uint8_t **p_extra, int *i_extra, OpusHeader *header, const char *vendor)
{
    unsigned char header_data[100];
    const int packet_size = opus_header_to_packet(header, header_data,
                                                  sizeof(header_data));

    const unsigned char *data[2];
    size_t size[2];

    data[0] = header_data;
    size[0] = packet_size;

    size_t comments_length;
    char *comments = comment_init(&comments_length, vendor);
    if (!comments)
        return 1;
    if (comment_add(&comments, &comments_length, "ENCODER=",
                    "VLC media player"))
    {
        free(comments);
        return 1;
    }

    if (comment_pad(&comments, &comments_length))
    {
        free(comments);
        return 1;
    }

    data[1] = (unsigned char *) comments;
    size[1] = comments_length;

    *i_extra = 0;
    *p_extra = ((void*)0);

    for (unsigned i = 0; i < ARRAY_SIZE(data); ++i)
    {
        if (xiph_AppendHeaders(i_extra, (void **) p_extra, size[i], data[i]))
        {
            *i_extra = 0;
            free(*p_extra);
            *p_extra = ((void*)0);
        }
    }

    free(comments);

    return 0;
}
