
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sspi_data {TYPE_1__* out_buf; TYPE_1__* in_buf; } ;
struct TYPE_2__ {unsigned int cBuffers; struct TYPE_2__* pBuffers; struct TYPE_2__* pvBuffer; } ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_1__*) ;

__attribute__((used)) static void cleanup_buffers( struct sspi_data *data )
{
    unsigned int i;

    if (data->in_buf)
    {
        for (i = 0; i < data->in_buf->cBuffers; ++i)
            HeapFree( GetProcessHeap(), 0, data->in_buf->pBuffers[i].pvBuffer );
        HeapFree( GetProcessHeap(), 0, data->in_buf->pBuffers );
        HeapFree( GetProcessHeap(), 0, data->in_buf );
    }
    if (data->out_buf)
    {
        for (i = 0; i < data->out_buf->cBuffers; ++i)
            HeapFree( GetProcessHeap(), 0, data->out_buf->pBuffers[i].pvBuffer );
        HeapFree( GetProcessHeap(), 0, data->out_buf->pBuffers );
        HeapFree( GetProcessHeap(), 0, data->out_buf );
    }
}
