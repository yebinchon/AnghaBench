
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int fz_context ;
struct TYPE_9__ {int password_sem; int thread; int path; void* cookie; int * error; int * progress; int ctx; TYPE_1__* mu; } ;
struct TYPE_8__ {int * ctx; } ;
typedef int MuOfficeLoadingProgressFn ;
typedef int MuOfficeLoadingErrorFn ;
typedef TYPE_1__ MuOfficeLib ;
typedef TYPE_2__ MuOfficeDoc ;
typedef int MuError ;


 int MuError_OK ;
 int MuError_OOM ;
 int MuOfficeDocErrorType_IllegalArgument ;
 int MuOfficeDocErrorType_NoError ;
 TYPE_2__* Pal_Mem_calloc (int,int) ;
 int Pal_Mem_free (TYPE_2__*) ;
 int fz_clone_context (int *) ;
 int fz_strdup (int *,char const*) ;
 int load_worker ;
 scalar_t__ mu_create_semaphore (int *) ;
 scalar_t__ mu_create_thread (int *,int ,TYPE_2__*) ;
 int mu_destroy_semaphore (int *) ;

MuError MuOfficeLib_loadDocument( MuOfficeLib *mu,
     const char *path,
     MuOfficeLoadingProgressFn *progressFn,
     MuOfficeLoadingErrorFn *errorFn,
     void *cookie,
     MuOfficeDoc **pDoc)
{
 MuOfficeDoc *doc;
 fz_context *ctx;

 if (mu == ((void*)0) || pDoc == ((void*)0))
  return MuOfficeDocErrorType_IllegalArgument;

 *pDoc = ((void*)0);

 doc = Pal_Mem_calloc(1, sizeof(*doc));
 if (doc == ((void*)0))
  return MuOfficeDocErrorType_NoError;

 ctx = mu->ctx;
 doc->mu = mu;
 doc->ctx = fz_clone_context(ctx);
 doc->progress = progressFn;
 doc->error = errorFn;
 doc->cookie = cookie;
 doc->path = fz_strdup(ctx, path);
 if (mu_create_semaphore(&doc->password_sem))
  goto fail;

 if (mu_create_thread(&doc->thread, load_worker, doc))
  goto fail;

 *pDoc = doc;

 return MuError_OK;
fail:
 mu_destroy_semaphore(&doc->password_sem);
 Pal_Mem_free(doc);

 return MuError_OOM;
}
