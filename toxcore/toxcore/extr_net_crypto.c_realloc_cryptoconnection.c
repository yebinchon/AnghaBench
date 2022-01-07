
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int * crypto_connections; } ;
typedef TYPE_1__ Net_Crypto ;
typedef int Crypto_Connection ;


 int free (int *) ;
 int * realloc (int *,int) ;

__attribute__((used)) static int realloc_cryptoconnection(Net_Crypto *c, uint32_t num)
{
    if (num == 0) {
        free(c->crypto_connections);
        c->crypto_connections = ((void*)0);
        return 0;
    }

    Crypto_Connection *newcrypto_connections = realloc(c->crypto_connections, num * sizeof(Crypto_Connection));

    if (newcrypto_connections == ((void*)0))
        return -1;

    c->crypto_connections = newcrypto_connections;
    return 0;
}
