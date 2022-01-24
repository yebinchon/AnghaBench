#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ULONG ;
typedef  int /*<<< orphan*/  TimeStamp ;
struct TYPE_10__ {int cBuffers; TYPE_1__* pBuffers; } ;
struct TYPE_9__ {scalar_t__ max_token; int /*<<< orphan*/  ctxt; int /*<<< orphan*/  cred; TYPE_3__* out_buf; TYPE_3__* in_buf; } ;
struct TYPE_8__ {scalar_t__ cbBuffer; scalar_t__ BufferType; int /*<<< orphan*/ * pvBuffer; } ;
typedef  TYPE_2__ SspiData ;
typedef  scalar_t__ SECURITY_STATUS ;
typedef  TYPE_3__* PSecBufferDesc ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ SECBUFFER_DATA ; 
 scalar_t__ SECBUFFER_TOKEN ; 
 scalar_t__ SEC_E_BUFFER_TOO_SMALL ; 
 scalar_t__ SEC_E_INTERNAL_ERROR ; 
 scalar_t__ SEC_E_OK ; 
 scalar_t__ SEC_I_COMPLETE_AND_CONTINUE ; 
 scalar_t__ SEC_I_COMPLETE_NEEDED ; 
 scalar_t__ SEC_I_CONTINUE_NEEDED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 

__attribute__((used)) static SECURITY_STATUS FUNC6(SspiData *sspi_data, BOOL first, ULONG data_rep)
{
    SECURITY_STATUS ret;
    ULONG req_attr = 0;
    ULONG ctxt_attr;
    TimeStamp ttl;
    PSecBufferDesc in_buf = sspi_data->in_buf;
    PSecBufferDesc out_buf = sspi_data->out_buf;

    FUNC0(in_buf->cBuffers >= 1);
    FUNC0(in_buf->pBuffers[0].pvBuffer != NULL);
    FUNC0(in_buf->pBuffers[0].cbBuffer != 0);

    FUNC0(out_buf->cBuffers >= 1);
    FUNC0(out_buf->pBuffers[0].pvBuffer != NULL);
    FUNC0(out_buf->pBuffers[0].cbBuffer != 0);

    FUNC5("Running the client the %s time.\n", first?"first":"second");

    /* We can either use ISC_REQ_ALLOCATE_MEMORY flag to ask the provider
     * always allocate output buffers for us, or initialize cbBuffer
     * before each call because the API changes it to represent actual
     * amount of data in the buffer.
     */

    /* test a failing call only the first time, otherwise we get
     * SEC_E_OUT_OF_SEQUENCE
     */
    if (first)
    {
        void *old_buf;

        /* pass NULL as an output buffer */
        ret = FUNC4(&sspi_data->cred, NULL, NULL, req_attr,
            0, data_rep, NULL, 0, &sspi_data->ctxt, NULL,
            &ctxt_attr, &ttl);

        FUNC2(ret == SEC_E_BUFFER_TOO_SMALL, "expected SEC_E_BUFFER_TOO_SMALL, got %s\n", FUNC1(ret));

        /* pass NULL as an output buffer */
        old_buf = out_buf->pBuffers[0].pvBuffer;
        out_buf->pBuffers[0].pvBuffer = NULL;

        ret = FUNC4(&sspi_data->cred, NULL, NULL, req_attr,
            0, data_rep, NULL, 0, &sspi_data->ctxt, out_buf,
            &ctxt_attr, &ttl);

        FUNC2(ret == SEC_E_INTERNAL_ERROR || ret == SEC_I_CONTINUE_NEEDED,
           "expected SEC_E_INTERNAL_ERROR or SEC_I_CONTINUE_NEEDED, got %s\n", FUNC1(ret));

        out_buf->pBuffers[0].pvBuffer = old_buf;

        /* pass an output buffer of 0 size */
        out_buf->pBuffers[0].cbBuffer = 0;

        ret = FUNC4(&sspi_data->cred, NULL, NULL, req_attr,
            0, data_rep, NULL, 0, &sspi_data->ctxt, out_buf,
            &ctxt_attr, &ttl);

        FUNC2(ret == SEC_E_BUFFER_TOO_SMALL, "expected SEC_E_BUFFER_TOO_SMALL, got %s\n", FUNC1(ret));

        FUNC2(out_buf->pBuffers[0].cbBuffer == 0,
           "InitializeSecurityContext set buffer size to %u\n", out_buf->pBuffers[0].cbBuffer);

        out_buf->pBuffers[0].cbBuffer = sspi_data->max_token;
        out_buf->pBuffers[0].BufferType = SECBUFFER_DATA;

        ret = FUNC4(&sspi_data->cred, NULL, NULL, req_attr,
            0, data_rep, NULL, 0, &sspi_data->ctxt, out_buf,
            &ctxt_attr, &ttl);

        FUNC2(ret == SEC_E_BUFFER_TOO_SMALL, "expected SEC_E_BUFFER_TOO_SMALL, got %s\n", FUNC1(ret));
        out_buf->pBuffers[0].BufferType = SECBUFFER_TOKEN;
    }

    out_buf->pBuffers[0].cbBuffer = sspi_data->max_token;

    ret = FUNC4(first?&sspi_data->cred:NULL, first?NULL:&sspi_data->ctxt, NULL, req_attr,
            0, data_rep, first?NULL:in_buf, 0, &sspi_data->ctxt, out_buf,
            &ctxt_attr, &ttl);

    if(ret == SEC_I_COMPLETE_AND_CONTINUE || ret == SEC_I_COMPLETE_NEEDED)
    {
        FUNC3(&sspi_data->ctxt, out_buf);
        if(ret == SEC_I_COMPLETE_AND_CONTINUE)
            ret = SEC_I_CONTINUE_NEEDED;
        else if(ret == SEC_I_COMPLETE_NEEDED)
            ret = SEC_E_OK;
    }

    FUNC2(out_buf->pBuffers[0].BufferType == SECBUFFER_TOKEN,
       "buffer type was changed from SECBUFFER_TOKEN to %d\n", out_buf->pBuffers[0].BufferType);
    FUNC2(out_buf->pBuffers[0].cbBuffer < sspi_data->max_token,
       "InitializeSecurityContext set buffer size to %u\n", out_buf->pBuffers[0].cbBuffer);

    return ret;
}