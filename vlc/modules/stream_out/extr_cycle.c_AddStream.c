
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int p_next; int p_sout; TYPE_2__* p_sys; } ;
typedef TYPE_1__ sout_stream_t ;
struct TYPE_7__ {int * stream; TYPE_3__* first; } ;
typedef TYPE_2__ sout_stream_sys_t ;
struct TYPE_8__ {int fmt; int id; struct TYPE_8__* next; } ;
typedef TYPE_3__ sout_stream_id_sys_t ;


 int msg_Dbg (TYPE_1__*,char*,char*) ;
 int * sout_StreamChainNew (int ,char*,int ,int *) ;
 int sout_StreamIdAdd (int *,int *) ;

__attribute__((used)) static int AddStream(sout_stream_t *stream, char *chain)
{
    sout_stream_sys_t *sys = stream->p_sys;

    msg_Dbg(stream, "starting new phase \"%s\"", chain);

    sys->stream = sout_StreamChainNew(stream->p_sout, chain,
                                      stream->p_next, ((void*)0));
    if (sys->stream == ((void*)0))
        return -1;

    for (sout_stream_id_sys_t *id = sys->first; id != ((void*)0); id = id->next)
        id->id = sout_StreamIdAdd(sys->stream, &id->fmt);

    return 0;
}
