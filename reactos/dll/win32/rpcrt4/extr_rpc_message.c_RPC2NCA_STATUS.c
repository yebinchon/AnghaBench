
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RPC_STATUS ;
typedef int NCA_STATUS ;




 int NCA_S_COMM_FAILURE ;
 int NCA_S_FAULT_CANCEL ;
 int NCA_S_FAULT_CONTEXT_MISMATCH ;
 int NCA_S_FAULT_FP_DIV_ZERO ;
 int NCA_S_FAULT_FP_ERROR ;
 int NCA_S_FAULT_FP_OVERFLOW ;
 int NCA_S_FAULT_FP_UNDERFLOW ;
 int NCA_S_FAULT_INT_DIV_BY_ZERO ;
 int NCA_S_FAULT_INT_OVERFLOW ;
 int NCA_S_FAULT_INVALID_BOUND ;
 int NCA_S_FAULT_INVALID_TAG ;
 int NCA_S_FAULT_PIPE_CLOSED ;
 int NCA_S_FAULT_PIPE_DISCIPLINE ;
 int NCA_S_FAULT_PIPE_EMPTY ;
 int NCA_S_FAULT_PIPE_ORDER ;
 int NCA_S_FAULT_REMOTE_NO_MEMORY ;
 int NCA_S_FAULT_UNSPEC ;
 int NCA_S_MANAGER_NOT_ENTERED ;
 int NCA_S_OP_RNG_ERROR ;
 int NCA_S_PROTO_ERROR ;
 int NCA_S_SERVER_TOO_BUSY ;
 int NCA_S_UNK_IF ;
 int NCA_S_UNSUPPORTED_TYPE ;
NCA_STATUS RPC2NCA_STATUS(RPC_STATUS status)
{
    switch (status)
    {
    case 152: return NCA_S_FAULT_CONTEXT_MISMATCH;
    case 151: return NCA_S_FAULT_REMOTE_NO_MEMORY;
    case 144: return NCA_S_SERVER_TOO_BUSY;
    case 140: return NCA_S_UNK_IF;
    case 141: return NCA_S_SERVER_TOO_BUSY;
    case 149: return NCA_S_FAULT_UNSPEC;
    case 148: return NCA_S_MANAGER_NOT_ENTERED;
    case 142: return NCA_S_PROTO_ERROR;
    case 139: return NCA_S_UNSUPPORTED_TYPE;
    case 145: return NCA_S_FAULT_INVALID_TAG;
    case 146: return NCA_S_FAULT_INVALID_BOUND;
    case 143: return NCA_S_OP_RNG_ERROR;
    case 135: return NCA_S_FAULT_CONTEXT_MISMATCH;
    case 150: return NCA_S_FAULT_CANCEL;
    case 147: return NCA_S_COMM_FAILURE;
    case 134: return NCA_S_FAULT_PIPE_ORDER;
    case 138: return NCA_S_FAULT_PIPE_CLOSED;
    case 137: return NCA_S_FAULT_PIPE_DISCIPLINE;
    case 136: return NCA_S_FAULT_PIPE_EMPTY;
    case 133: return NCA_S_FAULT_FP_DIV_ZERO;
    case 132: return NCA_S_FAULT_FP_ERROR;
    case 131: return NCA_S_FAULT_FP_OVERFLOW;
    case 130: return NCA_S_FAULT_FP_UNDERFLOW;
    case 129: return NCA_S_FAULT_INT_DIV_BY_ZERO;
    case 128: return NCA_S_FAULT_INT_OVERFLOW;
    default: return status;
    }
}
