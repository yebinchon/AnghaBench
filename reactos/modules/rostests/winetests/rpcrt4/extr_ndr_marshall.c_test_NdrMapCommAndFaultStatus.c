
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG ;
typedef int RPC_STATUS ;
typedef int RPC_MESSAGE ;
typedef int MIDL_STUB_MESSAGE ;




 int NdrClientInitializeNew (int *,int *,int *,int) ;
 int NdrMapCommAndFaultStatus (int *,scalar_t__*,scalar_t__*,int) ;
 int Object_StubDesc ;



 int RPC_S_OK ;







 int ok (int,char*,int,...) ;

__attribute__((used)) static void test_NdrMapCommAndFaultStatus(void)
{
    RPC_STATUS rpc_status;
    MIDL_STUB_MESSAGE StubMsg;
    RPC_MESSAGE RpcMessage;

    NdrClientInitializeNew(&RpcMessage, &StubMsg, &Object_StubDesc, 5);

    for (rpc_status = 0; rpc_status < 10000; rpc_status++)
    {
        RPC_STATUS status;
        ULONG comm_status = 0;
        ULONG fault_status = 0;
        ULONG expected_comm_status = 0;
        ULONG expected_fault_status = 0;
        status = NdrMapCommAndFaultStatus(&StubMsg, &comm_status, &fault_status, rpc_status);
        ok(status == RPC_S_OK, "NdrMapCommAndFaultStatus failed with error %d\n", status);
        switch (rpc_status)
        {
        case 138:
        case 135:
        case 130:
        case 131:
        case 132:
        case 137:
        case 133:
        case 129:
        case 128:
        case 134:
        case 139:
        case 136:
            expected_comm_status = rpc_status;
            break;
        default:
            expected_fault_status = rpc_status;
        }
        ok(comm_status == expected_comm_status, "NdrMapCommAndFaultStatus should have mapped %d to comm status %d instead of %d\n",
            rpc_status, expected_comm_status, comm_status);
        ok(fault_status == expected_fault_status, "NdrMapCommAndFaultStatus should have mapped %d to fault status %d instead of %d\n",
            rpc_status, expected_fault_status, fault_status);
    }
}
