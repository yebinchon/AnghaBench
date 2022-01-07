
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct use_connection_context {int (* set_accessname ) (struct use_connection_context*,int*) ;scalar_t__ accessname; int userid; int password; int flags; int hwndOwner; } ;
struct TYPE_7__ {scalar_t__ (* getCaps ) (int ) ;scalar_t__ (* addConnection3 ) (int ,TYPE_2__*,int ,int ,int ) ;scalar_t__ (* addConnection ) (TYPE_2__*,int ,int ) ;} ;
typedef TYPE_1__ WNetProvider ;
struct TYPE_8__ {char* lpLocalName; } ;
typedef TYPE_2__ NETRESOURCEW ;
typedef scalar_t__ DWORD ;
typedef scalar_t__ BOOLEAN ;


 scalar_t__ ERROR_BAD_PROVIDER ;
 int WNNC_CONNECTION ;
 scalar_t__ WNNC_CON_ADDCONNECTION ;
 scalar_t__ WNNC_CON_ADDCONNECTION3 ;
 scalar_t__ WN_ACCESS_DENIED ;
 scalar_t__ WN_ALREADY_CONNECTED ;
 scalar_t__ WN_SUCCESS ;
 scalar_t__ stub1 (int ) ;
 scalar_t__ stub2 (int ,TYPE_2__*,int ,int ,int ) ;
 scalar_t__ stub3 (TYPE_2__*,int ,int ) ;
 int stub4 (struct use_connection_context*,int*) ;

__attribute__((used)) static DWORD wnet_use_provider( struct use_connection_context *ctxt, NETRESOURCEW * netres, WNetProvider *provider, BOOLEAN redirect )
{
    DWORD caps, ret;

    caps = provider->getCaps(WNNC_CONNECTION);
    if (!(caps & (WNNC_CON_ADDCONNECTION | WNNC_CON_ADDCONNECTION3)))
        return ERROR_BAD_PROVIDER;

    ret = WN_ACCESS_DENIED;
    do
    {
        if ((caps & WNNC_CON_ADDCONNECTION3) && provider->addConnection3)
            ret = provider->addConnection3(ctxt->hwndOwner, netres, ctxt->password, ctxt->userid, ctxt->flags);
        else if ((caps & WNNC_CON_ADDCONNECTION) && provider->addConnection)
            ret = provider->addConnection(netres, ctxt->password, ctxt->userid);

        if (ret == WN_ALREADY_CONNECTED && redirect)
            netres->lpLocalName[0] -= 1;
    } while (redirect && ret == WN_ALREADY_CONNECTED && netres->lpLocalName[0] >= 'C');

    if (ret == WN_SUCCESS && ctxt->accessname)
        ctxt->set_accessname(ctxt, netres->lpLocalName);

    return ret;
}
