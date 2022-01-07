
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;


 int fz_drop_context (int *) ;

__attribute__((used)) static void drop_tls_context(void *arg)
{
 fz_context *ctx = (fz_context *)arg;

 fz_drop_context(ctx);
}
