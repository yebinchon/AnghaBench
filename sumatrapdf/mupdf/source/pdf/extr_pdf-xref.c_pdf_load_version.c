
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int version; int file; } ;
typedef TYPE_1__ pdf_document ;
typedef int fz_context ;


 int FZ_ERROR_GENERIC ;
 int SEEK_SET ;
 float fz_atof (char*) ;
 int fz_read_line (int *,int ,char*,int) ;
 int fz_seek (int *,int ,int ,int ) ;
 int fz_throw (int *,int ,char*) ;
 int fz_warn (int *,char*,int,int) ;
 scalar_t__ memcmp (char*,char*,int) ;
 int strlen (char*) ;

__attribute__((used)) static void
pdf_load_version(fz_context *ctx, pdf_document *doc)
{
 char buf[20];

 fz_seek(ctx, doc->file, 0, SEEK_SET);
 fz_read_line(ctx, doc->file, buf, sizeof buf);
 if (strlen(buf) < 5 || memcmp(buf, "%PDF-", 5) != 0)
  fz_throw(ctx, FZ_ERROR_GENERIC, "cannot recognize version marker");

 doc->version = 10 * (fz_atof(buf+5) + 0.05f);
 if (doc->version < 10 || doc->version > 17)
  if (doc->version != 20)
   fz_warn(ctx, "unknown PDF version: %d.%d", doc->version / 10, doc->version % 10);
}
