
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_8__ {unsigned char version; unsigned char channels; short gain; unsigned char channel_mapping; unsigned char nb_streams; unsigned char nb_coupled; unsigned char* stream_map; int input_sample_rate; scalar_t__ preskip; } ;
struct TYPE_7__ {unsigned char const* data; int maxlen; int pos; } ;
typedef TYPE_1__ ROPacket ;
typedef TYPE_2__ OpusHeader ;


 scalar_t__ memcmp (char*,char*,int) ;
 int read_chars (TYPE_1__*,unsigned char*,int) ;
 int read_uint16 (TYPE_1__*,scalar_t__*) ;
 int read_uint32 (TYPE_1__*,int *) ;

int opus_header_parse(const unsigned char *packet, int len, OpusHeader *h)
{
    char str[9];
    ROPacket p;
    unsigned char ch;
    uint16_t shortval;

    p.data = packet;
    p.maxlen = len;
    p.pos = 0;
    str[8] = 0;
    if (len<19)return 0;
    read_chars(&p, (unsigned char*)str, 8);
    if (memcmp(str, "OpusHead", 8)!=0)
        return 0;

    if (!read_chars(&p, &ch, 1))
        return 0;
    h->version = ch;
    if((h->version&240) != 0)
        return 0;

    if (!read_chars(&p, &ch, 1))
        return 0;
    h->channels = ch;
    if (h->channels == 0)
        return 0;

    if (!read_uint16(&p, &shortval))
        return 0;
    h->preskip = shortval;

    if (!read_uint32(&p, &h->input_sample_rate))
        return 0;

    if (!read_uint16(&p, &shortval))
        return 0;
    h->gain = (short)shortval;

    if (!read_chars(&p, &ch, 1))
        return 0;
    h->channel_mapping = ch;

    if (h->channel_mapping != 0)
    {
        if (!read_chars(&p, &ch, 1))
            return 0;

        if (ch<1)
            return 0;
        h->nb_streams = ch;

        if (!read_chars(&p, &ch, 1))
            return 0;

        if (ch>h->nb_streams || (ch+h->nb_streams)>255)
            return 0;
        h->nb_coupled = ch;


        for (int i=0;i<h->channels;i++)
        {
            if (!read_chars(&p, &h->stream_map[i], 1))
                return 0;
            if (h->stream_map[i]>(h->nb_streams+h->nb_coupled) && h->stream_map[i]!=255)
                return 0;
        }
    } else {
        if(h->channels>2)
            return 0;
        h->nb_streams = 1;
        h->nb_coupled = h->channels>1;
        h->stream_map[0]=0;
        h->stream_map[1]=1;
    }


    if ((h->version==0 || h->version==1) && p.pos != len)
        return 0;
    return 1;
}
