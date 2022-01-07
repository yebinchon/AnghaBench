
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int uint8_t ;
struct TYPE_6__ {int pf_control; int pf_seek; int pf_read; TYPE_2__* p_sys; int s; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_8__ {void* opaque; void* zfree; void* zalloc; scalar_t__ avail_in; int next_in; } ;
struct TYPE_7__ {int eof; TYPE_4__ zstream; int buffer; } ;
typedef TYPE_2__ stream_sys_t ;


 int Control ;
 int Read ;
 int Seek ;
 int U16_AT (int const*) ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int Z_MEM_ERROR ;
 void* Z_NULL ;
 int Z_OK ;
 int free (TYPE_2__*) ;
 int inflateInit2 (TYPE_4__*,int) ;
 TYPE_2__* malloc (int) ;
 int memcmp (int const*,char*,int) ;
 scalar_t__ unlikely (int ) ;
 int vlc_stream_Peek (int ,int const**,int) ;

__attribute__((used)) static int Open(vlc_object_t *obj)
{
    stream_t *stream = (stream_t *)obj;
    const uint8_t *peek;
    int bits;


    if (vlc_stream_Peek(stream->s, &peek, 2) < 2)
        return VLC_EGENERIC;

    if ((peek[0] & 0xF) == 8 && (peek[0] >> 4) < 8 && (U16_AT(peek) % 31) == 0)
        bits = 15;
    else
    if (!memcmp(peek, "\x1F\x8B", 2))
        bits = 15 + 32;
    else
        return VLC_EGENERIC;

    stream_sys_t *sys = malloc(sizeof (*sys));
    if (unlikely(sys == ((void*)0)))
        return VLC_ENOMEM;

    sys->zstream.next_in = sys->buffer;
    sys->zstream.avail_in = 0;
    sys->zstream.zalloc = Z_NULL;
    sys->zstream.zfree = Z_NULL;
    sys->zstream.opaque = Z_NULL;
    sys->eof = 0;

    int ret = inflateInit2(&sys->zstream, bits);
    if (ret != Z_OK)
    {
        free(sys);
        return (ret == Z_MEM_ERROR) ? VLC_ENOMEM : VLC_EGENERIC;
    }

    stream->p_sys = sys;
    stream->pf_read = Read;
    stream->pf_seek = Seek;
    stream->pf_control = Control;
    return VLC_SUCCESS;
}
