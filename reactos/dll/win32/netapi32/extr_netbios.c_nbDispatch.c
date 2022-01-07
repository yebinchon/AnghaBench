
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


typedef int UCHAR ;
struct TYPE_24__ {int data; } ;
struct TYPE_26__ {int cmdQueue; TYPE_2__ impl; TYPE_1__* transport; } ;
struct TYPE_25__ {int ncb_command; } ;
struct TYPE_23__ {int (* findName ) (int ,TYPE_3__*) ;} ;
typedef TYPE_3__* PNCB ;
typedef TYPE_4__ NetBIOSAdapter ;


 int FIXME (char*,TYPE_3__*,int) ;
 int NBCmdQueueAdd (int ,TYPE_3__*) ;
 int NBCmdQueueComplete (int ,TYPE_3__*,int) ;







 int NCBRESET ;


 int NRC_BRIDGE ;
 int NRC_GOODRET ;
 int NRC_ILLCMD ;
 int NRC_INVADDRESS ;
 int TRACE (char*,...) ;
 int nbAStat (TYPE_4__*,TYPE_3__*) ;
 int nbCall (TYPE_4__*,TYPE_3__*) ;
 int nbHangup (TYPE_4__*,TYPE_3__*) ;
 int nbRecv (TYPE_4__*,TYPE_3__*) ;
 int nbReset (TYPE_4__*,TYPE_3__*) ;
 int nbSend (TYPE_4__*,TYPE_3__*) ;
 int stub1 (int ,TYPE_3__*) ;

__attribute__((used)) static UCHAR nbDispatch(NetBIOSAdapter *adapter, PNCB ncb)
{
    UCHAR ret, cmd;

    TRACE(": adapter %p, ncb %p\n", adapter, ncb);

    if (!adapter) return NRC_BRIDGE;
    if (!ncb) return NRC_INVADDRESS;

    cmd = ncb->ncb_command & 0x7f;
    if (cmd == NCBRESET)
        ret = nbReset(adapter, ncb);
    else
    {
        ret = NBCmdQueueAdd(adapter->cmdQueue, ncb);
        if (ret == NRC_GOODRET)
        {
            switch (cmd)
            {
                case 135:
                    ret = nbCall(adapter, ncb);
                    break;




                case 129:
                case 128:
                case 134:
                case 133:
                    ret = nbSend(adapter, ncb);
                    break;

                case 130:
                    ret = nbRecv(adapter, ncb);
                    break;

                case 131:
                    ret = nbHangup(adapter, ncb);
                    break;

                case 136:
                    ret = nbAStat(adapter, ncb);
                    break;

                case 132:
                    if (adapter->transport->findName)
                        ret = adapter->transport->findName(adapter->impl.data,
                         ncb);
                    else
                        ret = NRC_ILLCMD;
                    break;

                default:
                    FIXME("(%p): command code 0x%02x\n", ncb, ncb->ncb_command);
                    ret = NRC_ILLCMD;
            }
            NBCmdQueueComplete(adapter->cmdQueue, ncb, ret);
        }
    }
    TRACE("returning 0x%02x\n", ret);
    return ret;
}
