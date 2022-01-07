
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int absname ;


 int PATH_MAX ;
 int ctx ;
 int doc ;
 int fz_document_supports_accelerator (int ,int ) ;
 int fz_save_accelerator (int ,int ,char*) ;
 int get_accelerator_filename (char*,int) ;

__attribute__((used)) static void save_accelerator(void)
{
 char absname[PATH_MAX];

 if (!doc)
  return;
 if (!fz_document_supports_accelerator(ctx, doc))
  return;
 if (!get_accelerator_filename(absname, sizeof(absname)))
  return;

 fz_save_accelerator(ctx, doc, absname);
}
