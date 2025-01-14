
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_8__ {int cookie; int data; int (* release ) (int ,int ,size_t,void*) ;scalar_t__ (* get ) (int ,int ,scalar_t__*,scalar_t__*,unsigned int*,size_t*,void**) ;} ;
struct TYPE_9__ {scalar_t__ deadline; scalar_t__ dts; TYPE_1__ source; int es; } ;
typedef TYPE_2__ imem_sys_t ;
struct TYPE_10__ {int out; scalar_t__ p_sys; } ;
typedef TYPE_3__ demux_t ;
struct TYPE_11__ {scalar_t__ i_dts; int p_buffer; scalar_t__ i_pts; } ;
typedef TYPE_4__ block_t ;


 scalar_t__ VLC_TICK_INVALID ;
 TYPE_4__* block_Alloc (size_t) ;
 int es_out_Send (int ,int ,TYPE_4__*) ;
 int es_out_SetPCR (int ,scalar_t__) ;
 int memcpy (int ,void*,size_t) ;
 scalar_t__ stub1 (int ,int ,scalar_t__*,scalar_t__*,unsigned int*,size_t*,void**) ;
 int stub2 (int ,int ,size_t,void*) ;

__attribute__((used)) static int Demux(demux_t *demux)
{
    imem_sys_t *sys = (imem_sys_t*)demux->p_sys;

    if (sys->deadline == VLC_TICK_INVALID)
        sys->deadline = sys->dts + 1;

    for (;;) {
        if (sys->deadline <= sys->dts)
            break;


        int64_t dts, pts;
        unsigned flags;
        size_t buffer_size;
        void *buffer;

        if (sys->source.get(sys->source.data, sys->source.cookie,
                            &dts, &pts, &flags, &buffer_size, &buffer))
            return 0;

        if (dts < 0)
            dts = pts;

        if (buffer_size > 0) {
            block_t *block = block_Alloc(buffer_size);
            if (block) {
                block->i_dts = dts >= 0 ? (1 + dts) : VLC_TICK_INVALID;
                block->i_pts = pts >= 0 ? (1 + pts) : VLC_TICK_INVALID;
                memcpy(block->p_buffer, buffer, buffer_size);

                es_out_SetPCR(demux->out, block->i_dts);
                es_out_Send(demux->out, sys->es, block);
            }
        }

        sys->dts = dts;

        sys->source.release(sys->source.data, sys->source.cookie,
                            buffer_size, buffer);
    }
    sys->deadline = VLC_TICK_INVALID;
    return 1;
}
