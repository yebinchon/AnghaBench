
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int c; } ;
typedef TYPE_1__ redisAsyncContext ;
typedef int SSL ;


 int C_ERR ;
 int C_OK ;
 scalar_t__ REDIS_ERR ;
 int * SSL_new (int ) ;
 scalar_t__ redisInitiateSSL (int *,int *) ;
 int redis_tls_ctx ;

__attribute__((used)) static int instanceLinkNegotiateTLS(redisAsyncContext *context) {

    (void) context;







    return C_OK;
}
