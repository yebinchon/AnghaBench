
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef void* vlc_tick_t ;
struct TYPE_11__ {int rem; void* quot; } ;
typedef TYPE_1__ lldiv_t ;
struct TYPE_12__ {int out; TYPE_3__* p_sys; } ;
typedef TYPE_2__ demux_t ;
struct TYPE_15__ {int i_divider_num; int i_divider_den; } ;
struct TYPE_13__ {int es; TYPE_7__ date; } ;
typedef TYPE_3__ demux_sys_t ;
struct TYPE_14__ {int i_buffer; void* i_length; void* i_dts; void* i_pts; } ;
typedef TYPE_4__ block_t ;


 int CLOCK_FREQ ;
 void* VLC_TICK_0 ;
 int asprintf (char**,char*,unsigned int,unsigned int,unsigned int,unsigned int) ;
 int assert (int) ;
 TYPE_4__* block_heap_Alloc (char*,int) ;
 void* date_Get (TYPE_7__*) ;
 void* date_Increment (TYPE_7__*,int) ;
 int es_out_Send (int ,int ,TYPE_4__*) ;
 int es_out_SetPCR (int ,void*) ;
 TYPE_1__ lldiv (void*,int) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int DemuxOnce (demux_t *demux, bool master)
{
    demux_sys_t *sys = demux->p_sys;
    vlc_tick_t pts = date_Get (&sys->date);
    lldiv_t d;
    unsigned h, m, s, f;

    d = lldiv (pts - VLC_TICK_0, CLOCK_FREQ);
    f = d.rem * sys->date.i_divider_num / sys->date.i_divider_den / CLOCK_FREQ;
    d = lldiv (d.quot, 60);
    s = d.rem;
    d = lldiv (d.quot, 60);
    m = d.rem;
    h = d.quot;

    char *str;
    int len = asprintf (&str, "%02u:%02u:%02u:%02u", h, m, s, f);
    if (len == -1)
        return -1;

    block_t *block = block_heap_Alloc (str, len + 1);
    if (unlikely(block == ((void*)0)))
        return -1;

    block->i_buffer = len;
    assert(str[len] == '\0');

    block->i_pts = block->i_dts = pts;
    block->i_length = date_Increment (&sys->date, 1) - pts;
    es_out_Send (demux->out, sys->es, block);
    if (master)
        es_out_SetPCR(demux->out, pts);
    return 1;
}
