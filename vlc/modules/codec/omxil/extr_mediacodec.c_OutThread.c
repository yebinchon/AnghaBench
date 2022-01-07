
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct mc_api_out {scalar_t__ b_eos; } ;
typedef int picture_t ;
struct TYPE_11__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ decoder_t ;
struct TYPE_13__ {int (* dequeue_out ) (TYPE_4__*,int) ;int (* get_out ) (TYPE_4__*,int,struct mc_api_out*) ;int (* release_out ) (TYPE_4__*,int,int) ;} ;
struct TYPE_12__ {int b_flush_out; int (* pf_process_output ) (TYPE_1__*,struct mc_api_out*,int **,int **) ;int b_drained; int b_aborted; int lock; int dec_cond; TYPE_4__ api; int cond; int b_output_ready; } ;
typedef TYPE_2__ decoder_sys_t ;
typedef int block_t ;


 int MC_API_INFO_OUTPUT_BUFFERS_CHANGED ;
 int MC_API_INFO_OUTPUT_FORMAT_CHANGED ;
 int decoder_QueueAudio (TYPE_1__*,int *) ;
 int decoder_QueueVideo (TYPE_1__*,int *) ;
 int msg_Err (TYPE_1__*,char*) ;
 int msg_Warn (TYPE_1__*,char*) ;
 int mutex_cleanup_push (int *) ;
 int stub1 (TYPE_4__*,int) ;
 int stub2 (TYPE_4__*,int,int) ;
 int stub3 (TYPE_4__*,int,struct mc_api_out*) ;
 int stub4 (TYPE_1__*,struct mc_api_out*,int **,int **) ;
 int vlc_cleanup_pop () ;
 int vlc_cond_broadcast (int *) ;
 int vlc_cond_signal (int *) ;
 int vlc_cond_wait (int *,int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int vlc_restorecancel (int) ;
 int vlc_savecancel () ;

__attribute__((used)) static void *OutThread(void *data)
{
    decoder_t *p_dec = data;
    decoder_sys_t *p_sys = p_dec->p_sys;

    vlc_mutex_lock(&p_sys->lock);
    mutex_cleanup_push(&p_sys->lock);
    for (;;)
    {
        int i_index;


        while (!p_sys->b_flush_out && !p_sys->b_output_ready)
            vlc_cond_wait(&p_sys->cond, &p_sys->lock);

        if (p_sys->b_flush_out)
        {

            p_sys->b_flush_out = 0;
            vlc_cond_broadcast(&p_sys->dec_cond);
            continue;
        }

        int canc = vlc_savecancel();

        vlc_mutex_unlock(&p_sys->lock);



        i_index = p_sys->api.dequeue_out(&p_sys->api, -1);

        vlc_mutex_lock(&p_sys->lock);


        if (p_sys->b_flush_out)
        {


            if (i_index >= 0)
                p_sys->api.release_out(&p_sys->api, i_index, 0);


            if (i_index != MC_API_INFO_OUTPUT_FORMAT_CHANGED
             && i_index != MC_API_INFO_OUTPUT_BUFFERS_CHANGED)
            {
                vlc_restorecancel(canc);
                continue;
            }
        }


        if (i_index >= 0 || i_index == MC_API_INFO_OUTPUT_FORMAT_CHANGED
         || i_index == MC_API_INFO_OUTPUT_BUFFERS_CHANGED)
        {
            struct mc_api_out out;
            int i_ret = p_sys->api.get_out(&p_sys->api, i_index, &out);

            if (i_ret == 1)
            {
                picture_t *p_pic = ((void*)0);
                block_t *p_block = ((void*)0);

                if (p_sys->pf_process_output(p_dec, &out, &p_pic,
                                             &p_block) == -1 && !out.b_eos)
                {
                    msg_Err(p_dec, "pf_process_output failed");
                    vlc_restorecancel(canc);
                    break;
                }
                if (p_pic)
                    decoder_QueueVideo(p_dec, p_pic);
                else if (p_block)
                    decoder_QueueAudio(p_dec, p_block);

                if (out.b_eos)
                {
                    msg_Warn(p_dec, "EOS received");
                    p_sys->b_drained = 1;
                    vlc_cond_signal(&p_sys->dec_cond);
                }
            } else if (i_ret != 0)
            {
                msg_Err(p_dec, "get_out failed");
                vlc_restorecancel(canc);
                break;
            }
        }
        else
        {
            vlc_restorecancel(canc);
            break;
        }
        vlc_restorecancel(canc);
    }
    msg_Warn(p_dec, "OutThread stopped");


    p_sys->b_aborted = 1;
    vlc_cond_signal(&p_sys->dec_cond);

    vlc_cleanup_pop();
    vlc_mutex_unlock(&p_sys->lock);

    return ((void*)0);
}
