
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sspi_data {scalar_t__ max_token; TYPE_2__* out_buf; int ctxt; int * in_buf; int cred; } ;
typedef int ULONG ;
typedef int TimeStamp ;
struct TYPE_5__ {TYPE_1__* pBuffers; } ;
struct TYPE_4__ {scalar_t__ cbBuffer; scalar_t__ BufferType; } ;
typedef scalar_t__ SECURITY_STATUS ;
typedef scalar_t__ BOOL ;


 int CompleteAuthToken (int *,TYPE_2__*) ;
 scalar_t__ InitializeSecurityContextA (int *,int *,int *,int ,int ,int ,int *,int ,int *,TYPE_2__*,int *,int *) ;
 scalar_t__ SECBUFFER_TOKEN ;
 int SECURITY_NETWORK_DREP ;
 scalar_t__ SEC_E_OK ;
 scalar_t__ SEC_I_COMPLETE_AND_CONTINUE ;
 scalar_t__ SEC_I_COMPLETE_NEEDED ;
 scalar_t__ SEC_I_CONTINUE_NEEDED ;
 int ok (int,char*,...) ;
 int trace (char*,char*) ;

__attribute__((used)) static SECURITY_STATUS run_client( struct sspi_data *data, BOOL first )
{
    SECURITY_STATUS ret;
    TimeStamp ttl;
    ULONG attr;

    trace( "running client for the %s time\n", first ? "first" : "second" );

    data->out_buf->pBuffers[0].cbBuffer = data->max_token;
    data->out_buf->pBuffers[0].BufferType = SECBUFFER_TOKEN;

    ret = InitializeSecurityContextA( first ? &data->cred : ((void*)0), first ? ((void*)0) : &data->ctxt,
                                      ((void*)0), 0, 0, SECURITY_NETWORK_DREP, first ? ((void*)0) : data->in_buf,
                                      0, &data->ctxt, data->out_buf, &attr, &ttl );
    if (ret == SEC_I_COMPLETE_AND_CONTINUE || ret == SEC_I_COMPLETE_NEEDED)
    {
        CompleteAuthToken( &data->ctxt, data->out_buf );
        if (ret == SEC_I_COMPLETE_AND_CONTINUE)
            ret = SEC_I_CONTINUE_NEEDED;
        else if (ret == SEC_I_COMPLETE_NEEDED)
            ret = SEC_E_OK;
    }
    ok( data->out_buf->pBuffers[0].BufferType == SECBUFFER_TOKEN,
        "buffer type changed from SECBUFFER_TOKEN to %u\n", data->out_buf->pBuffers[0].BufferType );
    ok( data->out_buf->pBuffers[0].cbBuffer < data->max_token,
        "InitializeSecurityContext didn't change buffer size\n" );
    return ret;
}
