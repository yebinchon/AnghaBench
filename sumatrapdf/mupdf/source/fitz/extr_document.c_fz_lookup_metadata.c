
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* lookup_metadata ) (int *,TYPE_1__*,char const*,char*,int) ;} ;
typedef TYPE_1__ fz_document ;
typedef int fz_context ;


 int stub1 (int *,TYPE_1__*,char const*,char*,int) ;

int
fz_lookup_metadata(fz_context *ctx, fz_document *doc, const char *key, char *buf, int size)
{
 if (buf && size > 0)
  buf[0] = 0;
 if (doc && doc->lookup_metadata)
  return doc->lookup_metadata(ctx, doc, key, buf, size);
 return -1;
}
