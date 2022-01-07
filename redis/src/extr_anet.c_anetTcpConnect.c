
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ANET_CONNECT_NONE ;
 int anetTcpGenericConnect (char*,char const*,int,int *,int ) ;

int anetTcpConnect(char *err, const char *addr, int port)
{
    return anetTcpGenericConnect(err,addr,port,((void*)0),ANET_CONNECT_NONE);
}
