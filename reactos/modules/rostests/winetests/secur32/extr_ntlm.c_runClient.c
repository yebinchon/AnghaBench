
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ULONG ;
typedef int TimeStamp ;
struct TYPE_10__ {int cBuffers; TYPE_1__* pBuffers; } ;
struct TYPE_9__ {scalar_t__ max_token; int ctxt; int cred; TYPE_3__* out_buf; TYPE_3__* in_buf; } ;
struct TYPE_8__ {scalar_t__ cbBuffer; scalar_t__ BufferType; int * pvBuffer; } ;
typedef TYPE_2__ SspiData ;
typedef scalar_t__ SECURITY_STATUS ;
typedef TYPE_3__* PSecBufferDesc ;
typedef scalar_t__ BOOL ;


 scalar_t__ SECBUFFER_DATA ;
 scalar_t__ SECBUFFER_TOKEN ;
 scalar_t__ SEC_E_BUFFER_TOO_SMALL ;
 scalar_t__ SEC_E_INTERNAL_ERROR ;
 scalar_t__ SEC_E_OK ;
 scalar_t__ SEC_I_COMPLETE_AND_CONTINUE ;
 scalar_t__ SEC_I_COMPLETE_NEEDED ;
 scalar_t__ SEC_I_CONTINUE_NEEDED ;
 int assert (int) ;
 scalar_t__ getSecError (scalar_t__) ;
 int ok (int,char*,scalar_t__) ;
 int pCompleteAuthToken (int *,TYPE_3__*) ;
 scalar_t__ pInitializeSecurityContextA (int *,int *,int *,int ,int ,int ,TYPE_3__*,int ,int *,TYPE_3__*,int *,int *) ;
 int trace (char*,char*) ;

__attribute__((used)) static SECURITY_STATUS runClient(SspiData *sspi_data, BOOL first, ULONG data_rep)
{
    SECURITY_STATUS ret;
    ULONG req_attr = 0;
    ULONG ctxt_attr;
    TimeStamp ttl;
    PSecBufferDesc in_buf = sspi_data->in_buf;
    PSecBufferDesc out_buf = sspi_data->out_buf;

    assert(in_buf->cBuffers >= 1);
    assert(in_buf->pBuffers[0].pvBuffer != ((void*)0));
    assert(in_buf->pBuffers[0].cbBuffer != 0);

    assert(out_buf->cBuffers >= 1);
    assert(out_buf->pBuffers[0].pvBuffer != ((void*)0));
    assert(out_buf->pBuffers[0].cbBuffer != 0);

    trace("Running the client the %s time.\n", first?"first":"second");
    if (first)
    {
        void *old_buf;


        ret = pInitializeSecurityContextA(&sspi_data->cred, ((void*)0), ((void*)0), req_attr,
            0, data_rep, ((void*)0), 0, &sspi_data->ctxt, ((void*)0),
            &ctxt_attr, &ttl);

        ok(ret == SEC_E_BUFFER_TOO_SMALL, "expected SEC_E_BUFFER_TOO_SMALL, got %s\n", getSecError(ret));


        old_buf = out_buf->pBuffers[0].pvBuffer;
        out_buf->pBuffers[0].pvBuffer = ((void*)0);

        ret = pInitializeSecurityContextA(&sspi_data->cred, ((void*)0), ((void*)0), req_attr,
            0, data_rep, ((void*)0), 0, &sspi_data->ctxt, out_buf,
            &ctxt_attr, &ttl);

        ok(ret == SEC_E_INTERNAL_ERROR || ret == SEC_I_CONTINUE_NEEDED,
           "expected SEC_E_INTERNAL_ERROR or SEC_I_CONTINUE_NEEDED, got %s\n", getSecError(ret));

        out_buf->pBuffers[0].pvBuffer = old_buf;


        out_buf->pBuffers[0].cbBuffer = 0;

        ret = pInitializeSecurityContextA(&sspi_data->cred, ((void*)0), ((void*)0), req_attr,
            0, data_rep, ((void*)0), 0, &sspi_data->ctxt, out_buf,
            &ctxt_attr, &ttl);

        ok(ret == SEC_E_BUFFER_TOO_SMALL, "expected SEC_E_BUFFER_TOO_SMALL, got %s\n", getSecError(ret));

        ok(out_buf->pBuffers[0].cbBuffer == 0,
           "InitializeSecurityContext set buffer size to %u\n", out_buf->pBuffers[0].cbBuffer);

        out_buf->pBuffers[0].cbBuffer = sspi_data->max_token;
        out_buf->pBuffers[0].BufferType = SECBUFFER_DATA;

        ret = pInitializeSecurityContextA(&sspi_data->cred, ((void*)0), ((void*)0), req_attr,
            0, data_rep, ((void*)0), 0, &sspi_data->ctxt, out_buf,
            &ctxt_attr, &ttl);

        ok(ret == SEC_E_BUFFER_TOO_SMALL, "expected SEC_E_BUFFER_TOO_SMALL, got %s\n", getSecError(ret));
        out_buf->pBuffers[0].BufferType = SECBUFFER_TOKEN;
    }

    out_buf->pBuffers[0].cbBuffer = sspi_data->max_token;

    ret = pInitializeSecurityContextA(first?&sspi_data->cred:((void*)0), first?((void*)0):&sspi_data->ctxt, ((void*)0), req_attr,
            0, data_rep, first?((void*)0):in_buf, 0, &sspi_data->ctxt, out_buf,
            &ctxt_attr, &ttl);

    if(ret == SEC_I_COMPLETE_AND_CONTINUE || ret == SEC_I_COMPLETE_NEEDED)
    {
        pCompleteAuthToken(&sspi_data->ctxt, out_buf);
        if(ret == SEC_I_COMPLETE_AND_CONTINUE)
            ret = SEC_I_CONTINUE_NEEDED;
        else if(ret == SEC_I_COMPLETE_NEEDED)
            ret = SEC_E_OK;
    }

    ok(out_buf->pBuffers[0].BufferType == SECBUFFER_TOKEN,
       "buffer type was changed from SECBUFFER_TOKEN to %d\n", out_buf->pBuffers[0].BufferType);
    ok(out_buf->pBuffers[0].cbBuffer < sspi_data->max_token,
       "InitializeSecurityContext set buffer size to %u\n", out_buf->pBuffers[0].cbBuffer);

    return ret;
}
