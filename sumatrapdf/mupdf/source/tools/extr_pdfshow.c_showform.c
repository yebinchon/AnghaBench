
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;


 int ctx ;
 int doc ;
 int pdf_array_get (int ,int *,int) ;
 int pdf_array_len (int ,int *) ;
 int * pdf_dict_getp (int ,int ,char*) ;
 int pdf_trailer (int ,int ) ;
 int showfield (int ) ;

__attribute__((used)) static void showform(void)
{
 pdf_obj *fields;
 int i, n;

 fields = pdf_dict_getp(ctx, pdf_trailer(ctx, doc), "Root/AcroForm/Fields");
 n = pdf_array_len(ctx, fields);
 for (i = 0; i < n; ++i)
  showfield(pdf_array_get(ctx, fields, i));
}
