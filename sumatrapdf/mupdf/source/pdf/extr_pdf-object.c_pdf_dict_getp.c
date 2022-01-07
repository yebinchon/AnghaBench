
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_context ;


 int FZ_ERROR_GENERIC ;
 int OBJ_IS_DICT (int *) ;
 int RESOLVE (int *) ;
 int fz_throw (int *,int ,char*) ;
 int * pdf_dict_gets (int *,int *,char*) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;

pdf_obj *
pdf_dict_getp(fz_context *ctx, pdf_obj *obj, const char *keys)
{
 char buf[256];
 char *k, *e;

 RESOLVE(obj);
 if (!OBJ_IS_DICT(obj))
  return ((void*)0);
 if (strlen(keys)+1 > 256)
  fz_throw(ctx, FZ_ERROR_GENERIC, "path too long");

 strcpy(buf, keys);

 e = buf;
 while (*e && obj)
 {
  k = e;
  while (*e != '/' && *e != '\0')
   e++;

  if (*e == '/')
  {
   *e = '\0';
   e++;
  }

  obj = pdf_dict_gets(ctx, obj, k);
 }

 return obj;
}
