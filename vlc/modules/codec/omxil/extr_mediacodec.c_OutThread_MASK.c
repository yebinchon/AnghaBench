#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct mc_api_out {scalar_t__ b_eos; } ;
typedef  int /*<<< orphan*/  picture_t ;
struct TYPE_11__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ decoder_t ;
struct TYPE_13__ {int (* dequeue_out ) (TYPE_4__*,int) ;int (* get_out ) (TYPE_4__*,int,struct mc_api_out*) ;int /*<<< orphan*/  (* release_out ) (TYPE_4__*,int,int) ;} ;
struct TYPE_12__ {int b_flush_out; int (* pf_process_output ) (TYPE_1__*,struct mc_api_out*,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ;int b_drained; int b_aborted; int /*<<< orphan*/  lock; int /*<<< orphan*/  dec_cond; TYPE_4__ api; int /*<<< orphan*/  cond; int /*<<< orphan*/  b_output_ready; } ;
typedef  TYPE_2__ decoder_sys_t ;
typedef  int /*<<< orphan*/  block_t ;

/* Variables and functions */
 int MC_API_INFO_OUTPUT_BUFFERS_CHANGED ; 
 int MC_API_INFO_OUTPUT_FORMAT_CHANGED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int,int) ; 
 int FUNC7 (TYPE_4__*,int,struct mc_api_out*) ; 
 int FUNC8 (TYPE_1__*,struct mc_api_out*,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int FUNC16 () ; 

__attribute__((used)) static void *FUNC17(void *data)
{
    decoder_t *p_dec = data;
    decoder_sys_t *p_sys = p_dec->p_sys;

    FUNC13(&p_sys->lock);
    FUNC4(&p_sys->lock);
    for (;;)
    {
        int i_index;

        /* Wait for output ready */
        while (!p_sys->b_flush_out && !p_sys->b_output_ready)
            FUNC12(&p_sys->cond, &p_sys->lock);

        if (p_sys->b_flush_out)
        {
            /* Acknowledge flushed state */
            p_sys->b_flush_out = false;
            FUNC10(&p_sys->dec_cond);
            continue;
        }

        int canc = FUNC16();

        FUNC14(&p_sys->lock);

        /* Wait for an output buffer. This function returns when a new output
         * is available or if output is flushed. */
        i_index = p_sys->api.dequeue_out(&p_sys->api, -1);

        FUNC13(&p_sys->lock);

        /* Ignore dequeue_out errors caused by flush */
        if (p_sys->b_flush_out)
        {
            /* If i_index >= 0, Release it. There is no way to know if i_index
             * is owned by us, so don't check the error. */
            if (i_index >= 0)
                p_sys->api.release_out(&p_sys->api, i_index, false);

            /* Parse output format/buffers even when we are flushing */
            if (i_index != MC_API_INFO_OUTPUT_FORMAT_CHANGED
             && i_index != MC_API_INFO_OUTPUT_BUFFERS_CHANGED)
            {
                FUNC15(canc);
                continue;
            }
        }

        /* Process output returned by dequeue_out */
        if (i_index >= 0 || i_index == MC_API_INFO_OUTPUT_FORMAT_CHANGED
         || i_index == MC_API_INFO_OUTPUT_BUFFERS_CHANGED)
        {
            struct mc_api_out out;
            int i_ret = p_sys->api.get_out(&p_sys->api, i_index, &out);

            if (i_ret == 1)
            {
                picture_t *p_pic = NULL;
                block_t *p_block = NULL;

                if (p_sys->pf_process_output(p_dec, &out, &p_pic,
                                             &p_block) == -1 && !out.b_eos)
                {
                    FUNC2(p_dec, "pf_process_output failed");
                    FUNC15(canc);
                    break;
                }
                if (p_pic)
                    FUNC1(p_dec, p_pic);
                else if (p_block)
                    FUNC0(p_dec, p_block);

                if (out.b_eos)
                {
                    FUNC3(p_dec, "EOS received");
                    p_sys->b_drained = true;
                    FUNC11(&p_sys->dec_cond);
                }
            } else if (i_ret != 0)
            {
                FUNC2(p_dec, "get_out failed");
                FUNC15(canc);
                break;
            }
        }
        else
        {
            FUNC15(canc);
            break;
        }
        FUNC15(canc);
    }
    FUNC3(p_dec, "OutThread stopped");

    /* Signal DecoderFlush that the output thread aborted */
    p_sys->b_aborted = true;
    FUNC11(&p_sys->dec_cond);

    FUNC9();
    FUNC14(&p_sys->lock);

    return NULL;
}