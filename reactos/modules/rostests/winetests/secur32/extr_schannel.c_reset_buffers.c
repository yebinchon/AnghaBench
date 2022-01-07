
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {unsigned int cBuffers; TYPE_1__* pBuffers; } ;
struct TYPE_4__ {int * pvBuffer; scalar_t__ cbBuffer; int BufferType; } ;
typedef TYPE_2__ SecBufferDesc ;


 int SECBUFFER_EMPTY ;

__attribute__((used)) static void reset_buffers(SecBufferDesc *desc)
{
    unsigned i;

    for (i = 0; i < desc->cBuffers; ++i)
    {
        desc->pBuffers[i].BufferType = SECBUFFER_EMPTY;
        if (i > 0)
        {
            desc->pBuffers[i].cbBuffer = 0;
            desc->pBuffers[i].pvBuffer = ((void*)0);
        }
    }
}
