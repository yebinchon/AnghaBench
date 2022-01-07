
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int pdf_obj ;
typedef int pdf_lexbuf ;
typedef int pdf_document ;
struct TYPE_4__ {int * cookie; int * buf; int * rdb; int * doc; } ;
typedef TYPE_1__ pdf_csi ;
typedef int fz_cookie ;
typedef int fz_context ;


 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void
pdf_init_csi(fz_context *ctx, pdf_csi *csi, pdf_document *doc, pdf_obj *rdb, pdf_lexbuf *buf, fz_cookie *cookie)
{
 memset(csi, 0, sizeof *csi);
 csi->doc = doc;
 csi->rdb = rdb;
 csi->buf = buf;
 csi->cookie = cookie;
}
