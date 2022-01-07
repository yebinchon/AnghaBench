
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t ULONG ;
struct TYPE_5__ {size_t cBuffers; struct TYPE_5__* pBuffers; struct TYPE_5__* pvBuffer; } ;
struct TYPE_4__ {TYPE_3__* out_buf; TYPE_3__* in_buf; } ;
typedef TYPE_1__ SspiData ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_3__*) ;

__attribute__((used)) static void cleanupBuffers(SspiData *sspi_data)
{
    ULONG i;

    if(sspi_data->in_buf != ((void*)0))
    {
        for(i = 0; i < sspi_data->in_buf->cBuffers; ++i)
        {
            HeapFree(GetProcessHeap(), 0, sspi_data->in_buf->pBuffers[i].pvBuffer);
        }
        HeapFree(GetProcessHeap(), 0, sspi_data->in_buf->pBuffers);
        HeapFree(GetProcessHeap(), 0, sspi_data->in_buf);
    }

    if(sspi_data->out_buf != ((void*)0))
    {
        for(i = 0; i < sspi_data->out_buf->cBuffers; ++i)
        {
            HeapFree(GetProcessHeap(), 0, sspi_data->out_buf->pBuffers[i].pvBuffer);
        }
        HeapFree(GetProcessHeap(), 0, sspi_data->out_buf->pBuffers);
        HeapFree(GetProcessHeap(), 0, sspi_data->out_buf);
    }
}
