
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zip; } ;
typedef TYPE_1__ xps_document ;
typedef int fz_context ;


 scalar_t__ fz_has_archive_entry (int *,int ,char*) ;
 int fz_snprintf (char*,int,char*,char*) ;

int
xps_has_part(fz_context *ctx, xps_document *doc, char *name)
{
 char buf[2048];
 if (name[0] == '/')
  name++;
 if (fz_has_archive_entry(ctx, doc->zip, name))
  return 1;
 fz_snprintf(buf, sizeof buf, "%s/[0].piece", name);
 if (fz_has_archive_entry(ctx, doc->zip, buf))
  return 1;
 fz_snprintf(buf, sizeof buf, "%s/[0].last.piece", name);
 if (fz_has_archive_entry(ctx, doc->zip, buf))
  return 1;
 return 0;
}
