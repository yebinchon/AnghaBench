
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection_ops {int (* is_server_listening ) (char const*) ;} ;
typedef int RPC_STATUS ;


 int FIXME (char*,char const*) ;
 int RPC_S_INVALID_BINDING ;
 struct connection_ops* rpcrt4_get_conn_protseq_ops (char const*) ;
 int stub1 (char const*) ;

RPC_STATUS RPCRT4_IsServerListening(const char *protseq, const char *endpoint)
{
  const struct connection_ops *ops;

  ops = rpcrt4_get_conn_protseq_ops(protseq);
  if (!ops)
  {
    FIXME("not supported for protseq %s\n", protseq);
    return RPC_S_INVALID_BINDING;
  }

  return ops->is_server_listening(endpoint);
}
