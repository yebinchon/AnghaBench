
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int RefCount; } ;
typedef TYPE_1__ ACTIVATION_CONTEXT ;


 int InterlockedExchangeAdd (int *,int) ;

__attribute__((used)) static inline void actctx_addref( ACTIVATION_CONTEXT *actctx )
{
    InterlockedExchangeAdd( &actctx->RefCount, 1 );
}
