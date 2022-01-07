
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int crypto_ctx_t ;
typedef int * SKEIN_CTX_LVALUE ;


 int CRYPTO_SUCCESS ;
 int * SKEIN_CTX (int *) ;
 int bzero (int *,int) ;
 int kmem_free (int *,int) ;

__attribute__((used)) static int
skein_free_context(crypto_ctx_t *ctx)
{
 if (SKEIN_CTX(ctx) != ((void*)0)) {
  bzero(SKEIN_CTX(ctx), sizeof (*SKEIN_CTX(ctx)));
  kmem_free(SKEIN_CTX(ctx), sizeof (*SKEIN_CTX(ctx)));
  SKEIN_CTX_LVALUE(ctx) = ((void*)0);
 }

 return (CRYPTO_SUCCESS);
}
