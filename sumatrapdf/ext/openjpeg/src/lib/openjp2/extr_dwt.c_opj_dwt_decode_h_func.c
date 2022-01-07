
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int opj_tls_t ;
struct TYPE_5__ {int mem; } ;
struct TYPE_4__ {size_t min_j; size_t max_j; size_t w; TYPE_2__ h; int * tiledp; } ;
typedef TYPE_1__ opj_dwd_decode_h_job_t ;
typedef size_t OPJ_UINT32 ;


 int opj_aligned_free (int ) ;
 int opj_free (TYPE_1__*) ;
 int opj_idwt53_h (TYPE_2__*,int *) ;

__attribute__((used)) static void opj_dwt_decode_h_func(void* user_data, opj_tls_t* tls)
{
    OPJ_UINT32 j;
    opj_dwd_decode_h_job_t* job;
    (void)tls;

    job = (opj_dwd_decode_h_job_t*)user_data;
    for (j = job->min_j; j < job->max_j; j++) {
        opj_idwt53_h(&job->h, &job->tiledp[j * job->w]);
    }

    opj_aligned_free(job->h.mem);
    opj_free(job);
}
