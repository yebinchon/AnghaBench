
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sspi_data {int out_buf; int ctxt; int in_buf; int cred; } ;
typedef int ULONG ;
typedef int TimeStamp ;
typedef scalar_t__ SECURITY_STATUS ;
typedef scalar_t__ BOOL ;


 scalar_t__ AcceptSecurityContext (int *,int *,int ,int ,int ,int *,int ,int *,int *) ;
 int CompleteAuthToken (int *,int ) ;
 int SECURITY_NETWORK_DREP ;
 scalar_t__ SEC_E_OK ;
 scalar_t__ SEC_I_COMPLETE_AND_CONTINUE ;
 scalar_t__ SEC_I_COMPLETE_NEEDED ;
 scalar_t__ SEC_I_CONTINUE_NEEDED ;
 int trace (char*,char*) ;

__attribute__((used)) static SECURITY_STATUS run_server( struct sspi_data *data, BOOL first )
{
    SECURITY_STATUS ret;
    TimeStamp ttl;
    ULONG attr;

    trace( "running server for the %s time\n", first ? "first" : "second" );

    ret = AcceptSecurityContext( &data->cred, first ? ((void*)0) : &data->ctxt,
                                 data->in_buf, 0, SECURITY_NETWORK_DREP,
                                 &data->ctxt, data->out_buf, &attr, &ttl );
    if (ret == SEC_I_COMPLETE_AND_CONTINUE || ret == SEC_I_COMPLETE_NEEDED)
    {
        CompleteAuthToken( &data->ctxt, data->out_buf );
        if (ret == SEC_I_COMPLETE_AND_CONTINUE)
            ret = SEC_I_CONTINUE_NEEDED;
        else if (ret == SEC_I_COMPLETE_NEEDED)
            ret = SEC_E_OK;
    }
    return ret;
}
