
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ULONG ;
typedef int TimeStamp ;
struct TYPE_3__ {int out_buf; int ctxt; int in_buf; int cred; } ;
typedef TYPE_1__ SspiData ;
typedef scalar_t__ SECURITY_STATUS ;
typedef scalar_t__ BOOL ;


 scalar_t__ SEC_E_OK ;
 scalar_t__ SEC_I_COMPLETE_AND_CONTINUE ;
 scalar_t__ SEC_I_COMPLETE_NEEDED ;
 scalar_t__ SEC_I_CONTINUE_NEEDED ;
 scalar_t__ pAcceptSecurityContext (int *,int *,int ,int ,int ,int *,int ,int *,int *) ;
 int pCompleteAuthToken (int *,int ) ;
 int trace (char*,char*) ;

__attribute__((used)) static SECURITY_STATUS runServer(SspiData *sspi_data, BOOL first, ULONG data_rep)
{
    SECURITY_STATUS ret;
    ULONG ctxt_attr;
    TimeStamp ttl;

    trace("Running the server the %s time\n", first?"first":"second");

    ret = pAcceptSecurityContext(&sspi_data->cred, first?((void*)0):&sspi_data->ctxt,
            sspi_data->in_buf, 0, data_rep, &sspi_data->ctxt,
            sspi_data->out_buf, &ctxt_attr, &ttl);

    if(ret == SEC_I_COMPLETE_AND_CONTINUE || ret == SEC_I_COMPLETE_NEEDED)
    {
        pCompleteAuthToken(&sspi_data->ctxt, sspi_data->out_buf);
        if(ret == SEC_I_COMPLETE_AND_CONTINUE)
            ret = SEC_I_CONTINUE_NEEDED;
        else if(ret == SEC_I_COMPLETE_NEEDED)
            ret = SEC_E_OK;
    }

    return ret;
}
