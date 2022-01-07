
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RPC_STATUS ;
typedef int NCA_STATUS ;


 int ERROR_INVALID_HANDLE ;
 int ERROR_NOT_ENOUGH_SERVER_MEMORY ;
 int ERROR_OUTOFMEMORY ;
 int RPC_S_ADDRESS_ERROR ;
 int RPC_S_CALL_CANCELLED ;
 int RPC_S_CALL_FAILED ;
 int RPC_S_CALL_FAILED_DNE ;
 int RPC_S_COMM_FAILURE ;
 int RPC_S_FP_DIV_ZERO ;
 int RPC_S_FP_OVERFLOW ;
 int RPC_S_FP_UNDERFLOW ;
 int RPC_S_INVALID_BOUND ;
 int RPC_S_INVALID_TAG ;
 int RPC_S_PROCNUM_OUT_OF_RANGE ;
 int RPC_S_PROTOCOL_ERROR ;
 int RPC_S_SERVER_TOO_BUSY ;
 int RPC_S_UNKNOWN_IF ;
 int RPC_S_UNSUPPORTED_TYPE ;
 int RPC_S_ZERO_DIVIDE ;
 int RPC_X_PIPE_CLOSED ;
 int RPC_X_PIPE_DISCIPLINE_ERROR ;
 int RPC_X_PIPE_EMPTY ;
 int RPC_X_WRONG_PIPE_ORDER ;

__attribute__((used)) static RPC_STATUS NCA2RPC_STATUS(NCA_STATUS status)
{
    switch (status)
    {
    case 159: return RPC_S_COMM_FAILURE;
    case 137: return RPC_S_PROCNUM_OUT_OF_RANGE;
    case 132: return RPC_S_UNKNOWN_IF;
    case 128: return RPC_S_CALL_FAILED;
    case 135: return RPC_S_PROTOCOL_ERROR;
    case 136: return ERROR_NOT_ENOUGH_SERVER_MEMORY;
    case 133: return RPC_S_SERVER_TOO_BUSY;
    case 130: return RPC_S_UNSUPPORTED_TYPE;
    case 150: return RPC_S_ZERO_DIVIDE;
    case 158: return RPC_S_ADDRESS_ERROR;
    case 155: return RPC_S_FP_DIV_ZERO;
    case 152: return RPC_S_FP_UNDERFLOW;
    case 153: return RPC_S_FP_OVERFLOW;
    case 147: return RPC_S_INVALID_TAG;
    case 148: return RPC_S_INVALID_BOUND;
    case 134: return RPC_S_PROTOCOL_ERROR;
    case 131: return RPC_S_CALL_FAILED_DNE;
    case 160: return RPC_S_CALL_FAILED_DNE;
    case 129: return RPC_S_CALL_FAILED;
    case 138: return RPC_S_CALL_FAILED_DNE;
    case 157: return RPC_S_CALL_CANCELLED;
    case 151: return RPC_S_ADDRESS_ERROR;
    case 154: return RPC_S_FP_OVERFLOW;
    case 149: return RPC_S_ADDRESS_ERROR;
    case 139: return RPC_S_CALL_FAILED;
    case 143: return RPC_X_PIPE_EMPTY;
    case 146: return RPC_X_PIPE_CLOSED;
    case 141: return RPC_X_WRONG_PIPE_ORDER;
    case 144: return RPC_X_PIPE_DISCIPLINE_ERROR;
    case 145: return RPC_S_COMM_FAILURE;
    case 142: return ERROR_OUTOFMEMORY;
    case 156: return ERROR_INVALID_HANDLE;
    case 140: return ERROR_NOT_ENOUGH_SERVER_MEMORY;
    default: return status;
    }
}
