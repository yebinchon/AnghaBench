
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int uint8_t ;
typedef int stream_t ;
struct TYPE_16__ {int running_event; scalar_t__ start; scalar_t__ offset; } ;
typedef TYPE_1__ mtrk_t ;
typedef int int32_t ;
typedef int es_out_t ;
struct TYPE_17__ {TYPE_3__* p_sys; int * s; } ;
typedef TYPE_2__ demux_t ;
struct TYPE_18__ {int es; int pts; } ;
typedef TYPE_3__ demux_sys_t ;
struct TYPE_19__ {int* p_buffer; int i_pts; int i_dts; } ;
typedef TYPE_4__ block_t ;


 int HandleMeta (TYPE_2__*,TYPE_1__*) ;
 int ReadVarInt (int *) ;
 TYPE_4__* block_Alloc (int) ;
 TYPE_4__* block_Realloc (TYPE_4__*,int,int) ;
 int block_Release (TYPE_4__*) ;
 int date_Get (int *) ;
 int es_out_Send (int *,int ,TYPE_4__*) ;
 int msg_Err (TYPE_2__*,char*) ;
 TYPE_4__* vlc_stream_Block (int *,int) ;
 int vlc_stream_Read (int *,int*,int) ;
 scalar_t__ vlc_stream_Seek (int *,scalar_t__) ;
 scalar_t__ vlc_stream_Tell (int *) ;

__attribute__((used)) static
int HandleMessage (demux_t *p_demux, mtrk_t *tr, es_out_t *out)
{
    stream_t *s = p_demux->s;
    demux_sys_t *sys = p_demux->p_sys;
    block_t *block;
    uint8_t first, event;
    int datalen;

    if (vlc_stream_Seek (s, tr->start + tr->offset)
     || (vlc_stream_Read (s, &first, 1) != 1))
        return -1;

    event = (first & 0x80) ? first : tr->running_event;

    switch (event & 0xf0)
    {
        case 0xF0:
            switch (event)
            {
                case 0xF0:
                case 0xF7:
                {

                    int32_t len = ReadVarInt (s);
                    if (len == -1)
                        return -1;

                    block = vlc_stream_Block (s, len);
                    if (block == ((void*)0))
                        return -1;
                    block = block_Realloc (block, 1, len);
                    if (block == ((void*)0))
                        return -1;
                    block->p_buffer[0] = event;
                    goto send;
                }
                case 0xFF:
                    if (HandleMeta (p_demux, tr))
                        return -1;


                    goto skip;
                case 0xF1:
                case 0xF3:
                    datalen = 1;
                    break;
                case 0xF2:
                    datalen = 2;
                    break;
                case 0xF4:
                case 0xF5:



                default:
                    datalen = 0;
                    break;
            }
            break;
        case 0xC0:
        case 0xD0:
            datalen = 1;
            break;
        default:
            datalen = 2;
            break;
    }


    block = block_Alloc (1 + datalen);
    if (block == ((void*)0))
        goto skip;

    block->p_buffer[0] = event;
    if (first & 0x80)
    {
        if (vlc_stream_Read(s, block->p_buffer + 1, datalen) < datalen)
            goto error;
    }
    else
    {
        if (datalen == 0)
        {
            msg_Err (p_demux, "malformatted MIDI event");
            goto error;
        }

        block->p_buffer[1] = first;
        if (datalen > 1
         && vlc_stream_Read(s, block->p_buffer + 2, datalen - 1) < datalen - 1)
            goto error;
    }

send:
    block->i_dts = block->i_pts = date_Get(&sys->pts);
    if (out != ((void*)0))
        es_out_Send(out, sys->es, block);
    else
        block_Release (block);

skip:
    if (event < 0xF8)

        tr->running_event = event;

    tr->offset = vlc_stream_Tell (s) - tr->start;
    return 0;

error:
    block_Release(block);
    return -1;
}
