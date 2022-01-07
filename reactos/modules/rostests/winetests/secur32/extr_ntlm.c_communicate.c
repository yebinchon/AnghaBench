
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {int max_token; TYPE_4__* out_buf; TYPE_2__* in_buf; } ;
struct TYPE_11__ {int cBuffers; TYPE_3__* pBuffers; } ;
struct TYPE_10__ {int * pvBuffer; int cbBuffer; } ;
struct TYPE_9__ {int cBuffers; TYPE_1__* pBuffers; } ;
struct TYPE_8__ {int cbBuffer; int * pvBuffer; } ;
typedef TYPE_5__ SspiData ;


 int memcpy (int *,int *,int ) ;
 int memset (int *,int ,int ) ;
 int trace (char*) ;

__attribute__((used)) static void communicate(SspiData *from, SspiData *to)
{
    if(from->out_buf != ((void*)0) && to->in_buf != ((void*)0))
    {
        trace("Running communicate.\n");
        if((from->out_buf->cBuffers >= 1) && (to->in_buf->cBuffers >= 1))
        {
            if((from->out_buf->pBuffers[0].pvBuffer != ((void*)0)) &&
                    (to->in_buf->pBuffers[0].pvBuffer != ((void*)0)))
            {
                memset(to->in_buf->pBuffers[0].pvBuffer, 0, to->max_token);

                memcpy(to->in_buf->pBuffers[0].pvBuffer,
                    from->out_buf->pBuffers[0].pvBuffer,
                    from->out_buf->pBuffers[0].cbBuffer);

                to->in_buf->pBuffers[0].cbBuffer = from->out_buf->pBuffers[0].cbBuffer;

                memset(from->out_buf->pBuffers[0].pvBuffer, 0, from->max_token);
            }
        }
    }
}
