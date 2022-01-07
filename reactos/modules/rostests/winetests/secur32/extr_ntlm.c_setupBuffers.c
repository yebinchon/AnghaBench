
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {int cbBuffer; int * pvBuffer; void* BufferType; } ;
struct TYPE_11__ {int cbMaxToken; } ;
struct TYPE_10__ {int max_token; TYPE_2__* out_buf; TYPE_1__* in_buf; } ;
struct TYPE_9__ {int cBuffers; TYPE_5__* pBuffers; void* ulVersion; } ;
struct TYPE_8__ {int cBuffers; TYPE_5__* pBuffers; void* ulVersion; } ;
typedef TYPE_3__ SspiData ;
typedef TYPE_4__ SecPkgInfoA ;
typedef int SecBufferDesc ;
typedef int SecBuffer ;
typedef int SECURITY_STATUS ;
typedef TYPE_5__* PSecBuffer ;


 int GetProcessHeap () ;
 void* HeapAlloc (int ,int ,int) ;
 void* SECBUFFER_TOKEN ;
 void* SECBUFFER_VERSION ;
 int SEC_E_INSUFFICIENT_MEMORY ;
 int SEC_E_OK ;
 int trace (char*) ;

__attribute__((used)) static SECURITY_STATUS setupBuffers(SspiData *sspi_data, SecPkgInfoA *sec_pkg_info)
{

    sspi_data->in_buf = HeapAlloc(GetProcessHeap(), 0, sizeof(SecBufferDesc));
    sspi_data->out_buf = HeapAlloc(GetProcessHeap(), 0, sizeof(SecBufferDesc));
    sspi_data->max_token = sec_pkg_info->cbMaxToken;

    if(sspi_data->in_buf != ((void*)0))
    {
        PSecBuffer sec_buffer = HeapAlloc(GetProcessHeap(), 0,
                sizeof(SecBuffer));
        if(sec_buffer == ((void*)0)){
            trace("in_buf: sec_buffer == NULL\n");
            return SEC_E_INSUFFICIENT_MEMORY;
        }

        sspi_data->in_buf->ulVersion = SECBUFFER_VERSION;
        sspi_data->in_buf->cBuffers = 1;
        sspi_data->in_buf->pBuffers = sec_buffer;

        sec_buffer->cbBuffer = sec_pkg_info->cbMaxToken;
        sec_buffer->BufferType = SECBUFFER_TOKEN;
        if((sec_buffer->pvBuffer = HeapAlloc(GetProcessHeap(), 0,
                        sec_pkg_info->cbMaxToken)) == ((void*)0))
        {
            trace("in_buf: sec_buffer->pvBuffer == NULL\n");
            return SEC_E_INSUFFICIENT_MEMORY;
        }
    }
    else
    {
        trace("HeapAlloc in_buf returned NULL\n");
        return SEC_E_INSUFFICIENT_MEMORY;
    }

    if(sspi_data->out_buf != ((void*)0))
    {
        PSecBuffer sec_buffer = HeapAlloc(GetProcessHeap(), 0,
                sizeof(SecBuffer));

        if(sec_buffer == ((void*)0)){
            trace("out_buf: sec_buffer == NULL\n");
            return SEC_E_INSUFFICIENT_MEMORY;
        }

        sspi_data->out_buf->ulVersion = SECBUFFER_VERSION;
        sspi_data->out_buf->cBuffers = 1;
        sspi_data->out_buf->pBuffers = sec_buffer;

        sec_buffer->cbBuffer = sec_pkg_info->cbMaxToken;
        sec_buffer->BufferType = SECBUFFER_TOKEN;
        if((sec_buffer->pvBuffer = HeapAlloc(GetProcessHeap(), 0,
                        sec_pkg_info->cbMaxToken)) == ((void*)0)){
            trace("out_buf: sec_buffer->pvBuffer == NULL\n");
            return SEC_E_INSUFFICIENT_MEMORY;
        }
    }
    else
    {
        trace("HeapAlloc out_buf returned NULL\n");
        return SEC_E_INSUFFICIENT_MEMORY;
    }

    return SEC_E_OK;
}
