
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* path; int ctx; int doc; int password_sem; int thread; } ;
typedef TYPE_1__ MuOfficeDoc ;


 int MuOfficeDoc_abortLoad (TYPE_1__*) ;
 int Pal_Mem_free (TYPE_1__*) ;
 int fz_drop_context (int ) ;
 int fz_drop_document (int ,int ) ;
 int mu_destroy_semaphore (int *) ;
 int mu_destroy_thread (int *) ;

void MuOfficeDoc_destroy(MuOfficeDoc *doc)
{
 MuOfficeDoc_abortLoad(doc);
 mu_destroy_thread(&doc->thread);
 mu_destroy_semaphore(&doc->password_sem);

 fz_drop_document(doc->ctx, doc->doc);
 fz_drop_context(doc->ctx);
 Pal_Mem_free(doc->path);
 Pal_Mem_free(doc);
}
