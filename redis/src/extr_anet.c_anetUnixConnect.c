
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ANET_CONNECT_NONE ;
 int anetUnixGenericConnect (char*,char const*,int ) ;

int anetUnixConnect(char *err, const char *path)
{
    return anetUnixGenericConnect(err,path,ANET_CONNECT_NONE);
}
