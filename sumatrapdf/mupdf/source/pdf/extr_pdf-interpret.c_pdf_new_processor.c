
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;


 void* Memento_label (int ,char*) ;
 int fz_calloc (int *,int,int) ;

void *
pdf_new_processor(fz_context *ctx, int size)
{
 return Memento_label(fz_calloc(ctx, 1, size), "pdf_processor");
}
