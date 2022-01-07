
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int format; } ;
typedef TYPE_1__ img_document ;
typedef int fz_document ;
typedef int fz_context ;


 scalar_t__ fz_strlcpy (char*,int ,int) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int
img_lookup_metadata(fz_context *ctx, fz_document *doc_, const char *key, char *buf, int size)
{
 img_document *doc = (img_document*)doc_;
 if (!strcmp(key, "format"))
  return (int)fz_strlcpy(buf, doc->format, size);
 return -1;
}
