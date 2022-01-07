
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERR (char*) ;

void SECUR32_initSchannelSP(void)
{
    ERR("TLS library not found, SSL connections will fail\n");
}
