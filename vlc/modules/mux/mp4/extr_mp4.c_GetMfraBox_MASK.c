#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
struct TYPE_6__ {scalar_t__ p_sys; } ;
typedef  TYPE_1__ sout_mux_t ;
struct TYPE_7__ {unsigned int i_nb_streams; TYPE_3__** pp_streams; } ;
typedef  TYPE_2__ sout_mux_sys_t ;
struct TYPE_8__ {int i_indexentries; TYPE_4__* p_indexentries; int /*<<< orphan*/  tinfo; } ;
typedef  TYPE_3__ mp4_stream_t ;
struct TYPE_9__ {int i_time; int i_moofoffset; int i_sample; int /*<<< orphan*/  i_trun; int /*<<< orphan*/  i_traf; } ;
typedef  TYPE_4__ mp4_fragindex_t ;
typedef  int /*<<< orphan*/  bo_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bo_t *FUNC8(sout_mux_t *p_mux)
{
    sout_mux_sys_t *p_sys = (sout_mux_sys_t*) p_mux->p_sys;
    bo_t *mfra = NULL;
    for (unsigned int i = 0; i < p_sys->i_nb_streams; i++)
    {
        mp4_stream_t *p_stream = p_sys->pp_streams[i];
        if (p_stream->i_indexentries)
        {
            bo_t *tfra = FUNC4("tfra", 0, 0x0);
            if (!tfra) continue;
            FUNC1(tfra, FUNC7(p_stream->tinfo));
            FUNC1(tfra, 0x3); // reserved + lengths (1,1,4)=>(0,0,3)
            FUNC1(tfra, p_stream->i_indexentries);
            for(uint32_t i_index=0; i_index<p_stream->i_indexentries; i_index++)
            {
                const mp4_fragindex_t *p_indexentry = &p_stream->p_indexentries[i_index];
                FUNC1(tfra, p_indexentry->i_time);
                FUNC1(tfra, p_indexentry->i_moofoffset);
                FUNC0(sizeof(p_indexentry->i_traf)==1); /* guard against sys changes */
                FUNC0(sizeof(p_indexentry->i_trun)==1);
                FUNC0(sizeof(p_indexentry->i_sample)==4);
                FUNC2(tfra, p_indexentry->i_traf);
                FUNC2(tfra, p_indexentry->i_trun);
                FUNC1(tfra, p_indexentry->i_sample);
            }

            if (!mfra && !(mfra = FUNC6("mfra")))
            {
                FUNC3(tfra);
                return NULL;
            }

            FUNC5(mfra,tfra);
        }
    }
    return mfra;
}