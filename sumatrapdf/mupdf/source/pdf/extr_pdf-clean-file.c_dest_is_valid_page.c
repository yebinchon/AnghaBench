
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_context ;


 int pdf_to_num (int *,int *) ;

__attribute__((used)) static int dest_is_valid_page(fz_context *ctx, pdf_obj *obj, int *page_object_nums, int pagecount)
{
 int i;
 int num = pdf_to_num(ctx, obj);

 if (num == 0)
  return 0;
 for (i = 0; i < pagecount; i++)
 {
  if (page_object_nums[i] == num)
   return 1;
 }
 return 0;
}
