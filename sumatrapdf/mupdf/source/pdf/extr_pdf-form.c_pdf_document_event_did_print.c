
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_document ;
typedef int fz_context ;


 int pdf_execute_action (int *,int *,int ,char*) ;
 int pdf_trailer (int *,int *) ;

void pdf_document_event_did_print(fz_context *ctx, pdf_document *doc)
{
 pdf_execute_action(ctx, doc, pdf_trailer(ctx, doc), "Root/AA/DP");
}
