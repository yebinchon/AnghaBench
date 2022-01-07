
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;


 int fz_append_byte (int *,void*,int) ;

__attribute__((used)) static void fz_append_emit(fz_context *ctx, void *buffer, int c)
{
 fz_append_byte(ctx, buffer, c);
}
