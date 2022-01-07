
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_document ;
typedef int fz_context ;


 int * fz_open_accelerated_document (int *,char const*,int *) ;

fz_document *
fz_open_document(fz_context *ctx, const char *filename)
{
 return fz_open_accelerated_document(ctx, filename, ((void*)0));
}
