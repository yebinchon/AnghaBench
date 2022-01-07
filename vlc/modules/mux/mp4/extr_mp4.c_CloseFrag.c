
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_22__ ;
typedef struct TYPE_24__ TYPE_1__ ;
typedef struct TYPE_23__ TYPE_19__ ;


typedef int vlc_object_t ;
struct TYPE_24__ {int psz_mux; scalar_t__ p_sys; } ;
typedef TYPE_1__ sout_mux_t ;
struct TYPE_26__ {unsigned int i_nb_streams; int muxh; TYPE_3__** pp_streams; } ;
typedef TYPE_2__ sout_mux_sys_t ;
struct TYPE_27__ {TYPE_22__* p_held_entry; int read; } ;
typedef TYPE_3__ mp4_stream_t ;
struct TYPE_28__ {scalar_t__ b; } ;
typedef TYPE_4__ bo_t ;
struct TYPE_25__ {TYPE_19__* p_block; } ;
struct TYPE_23__ {int i_length; } ;


 int ENQUEUE_ENTRY (int ,TYPE_22__*) ;
 TYPE_4__* GetMfraBox (TYPE_1__*) ;
 int LengthLocalFixup (TYPE_1__*,TYPE_3__*,TYPE_19__*) ;
 scalar_t__ MP4_MFRO_BOXSIZE ;
 int TAB_CLEAN (unsigned int,TYPE_3__**) ;
 int WriteFragments (TYPE_1__*,int) ;
 int bo_add_32be (TYPE_4__*,scalar_t__) ;
 scalar_t__ bo_size (TYPE_4__*) ;
 int box_fix (TYPE_4__*,scalar_t__) ;
 TYPE_4__* box_full_new (char*,int ,int) ;
 int box_gather (TYPE_4__*,TYPE_4__*) ;
 int box_send (TYPE_1__*,TYPE_4__*) ;
 int free (TYPE_2__*) ;
 int mp4_stream_Delete (TYPE_3__*) ;
 int mp4mux_Delete (int ) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static void CloseFrag(vlc_object_t *p_this)
{
    sout_mux_t *p_mux = (sout_mux_t *) p_this;
    sout_mux_sys_t *p_sys = (sout_mux_sys_t*) p_mux->p_sys;


    for (unsigned int i = 0; i < p_sys->i_nb_streams; i++)
    {
        mp4_stream_t *p_stream = p_sys->pp_streams[i];
        if (p_stream->p_held_entry)
        {
            if (p_stream->p_held_entry->p_block->i_length < 1)
                LengthLocalFixup(p_mux, p_stream, p_stream->p_held_entry->p_block);
            ENQUEUE_ENTRY(p_stream->read, p_stream->p_held_entry);
            p_stream->p_held_entry = ((void*)0);
        }
    }


    WriteFragments(p_mux, 1);



    if (!strcmp(p_mux->psz_mux, "mp4frag"))
    {
        bo_t *mfra = GetMfraBox(p_mux);
        if (mfra)
        {
            bo_t *mfro = box_full_new("mfro", 0, 0x0);
            if (mfro)
            {
                if (mfra->b)
                {
                    box_fix(mfra, bo_size(mfra));
                    bo_add_32be(mfro, bo_size(mfra) + MP4_MFRO_BOXSIZE);
                }
                box_gather(mfra, mfro);
            }
            box_send(p_mux, mfra);
        }
    }

    for (unsigned int i = 0; i < p_sys->i_nb_streams; i++)
        mp4_stream_Delete(p_sys->pp_streams[i]);
    TAB_CLEAN(p_sys->i_nb_streams, p_sys->pp_streams);
    mp4mux_Delete(p_sys->muxh);
    free(p_sys);
}
