
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;


 int SEP ;
 int atoi (char*) ;
 int ctx ;
 int fz_strlcpy (char*,char*,int) ;
 char* fz_strsep (char**,int ) ;
 int fz_write_string (int ,int ,char*) ;
 scalar_t__ isnumber (char*) ;
 int out ;
 int * pdf_array_get (int ,int *,int) ;
 int pdf_array_len (int ,int *) ;
 int * pdf_dict_get_val (int ,int *,int) ;
 int * pdf_dict_gets (int ,int *,char*) ;
 int pdf_dict_len (int ,int *) ;
 scalar_t__ pdf_is_array (int ,int *) ;
 scalar_t__ pdf_is_dict (int ,int *) ;
 scalar_t__ pdf_is_indirect (int ,int *) ;
 int pdf_print_obj (int ,int ,int *,int ,int ) ;
 int showobject (int *) ;
 int strcmp (char*,char*) ;
 int tight ;

__attribute__((used)) static void showpath(char *path, pdf_obj *obj)
{
 if (path && path[0])
 {
  char *part = fz_strsep(&path, SEP);
  if (part && part[0])
  {
   if (!strcmp(part, "*"))
   {
    int i, n;
    char buf[1000];
    if (pdf_is_array(ctx, obj))
    {
     n = pdf_array_len(ctx, obj);
     for (i = 0; i < n; ++i)
     {
      if (path)
      {
       fz_strlcpy(buf, path, sizeof buf);
       showpath(buf, pdf_array_get(ctx, obj, i));
      }
      else
       showpath(((void*)0), pdf_array_get(ctx, obj, i));
     }
    }
    else if (pdf_is_dict(ctx, obj))
    {
     n = pdf_dict_len(ctx, obj);
     for (i = 0; i < n; ++i)
     {
      if (path)
      {
       fz_strlcpy(buf, path, sizeof buf);
       showpath(buf, pdf_dict_get_val(ctx, obj, i));
      }
      else
       showpath(((void*)0), pdf_dict_get_val(ctx, obj, i));
     }
    }
    else
    {
     fz_write_string(ctx, out, "null\n");
    }
   }
   else if (isnumber(part) && pdf_is_array(ctx, obj))
    showpath(path, pdf_array_get(ctx, obj, atoi(part)-1));
   else
    showpath(path, pdf_dict_gets(ctx, obj, part));
  }
  else
   fz_write_string(ctx, out, "null\n");
 }
 else
 {
  if (pdf_is_indirect(ctx, obj))
   showobject(obj);
  else
  {
   pdf_print_obj(ctx, out, obj, tight, 0);
   fz_write_string(ctx, out, "\n");
  }
 }
}
