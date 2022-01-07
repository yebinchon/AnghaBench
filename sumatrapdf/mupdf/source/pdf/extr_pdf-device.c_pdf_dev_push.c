
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_device ;
typedef int fz_context ;


 int pdf_dev_push_new_buf (int *,int *,int *,int *,int *) ;

__attribute__((used)) static void
pdf_dev_push(fz_context *ctx, pdf_device *pdev)
{
 pdf_dev_push_new_buf(ctx, pdev, ((void*)0), ((void*)0), ((void*)0));
}
