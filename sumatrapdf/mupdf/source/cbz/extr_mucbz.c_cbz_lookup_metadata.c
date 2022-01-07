
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int fz_document ;
typedef int fz_context ;
struct TYPE_2__ {int arch; } ;
typedef TYPE_1__ cbz_document ;


 int fz_archive_format (int *,int ) ;
 scalar_t__ fz_strlcpy (char*,int ,int) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int
cbz_lookup_metadata(fz_context *ctx, fz_document *doc_, const char *key, char *buf, int size)
{
 cbz_document *doc = (cbz_document*)doc_;
 if (!strcmp(key, "format"))
  return (int) fz_strlcpy(buf, fz_archive_format(ctx, doc->arch), size);
 return -1;
}
