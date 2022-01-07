
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int redisTLSContextConfig ;


 int C_OK ;
 int UNUSED (int *) ;

int tlsConfigure(redisTLSContextConfig *ctx_config) {
    UNUSED(ctx_config);
    return C_OK;
}
