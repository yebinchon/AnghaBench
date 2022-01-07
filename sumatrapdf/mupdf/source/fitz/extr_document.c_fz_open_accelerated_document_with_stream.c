
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int fz_stream ;
struct TYPE_4__ {int * (* open_with_stream ) (int *,int *) ;int * (* open_accel_with_stream ) (int *,int *,int *) ;} ;
typedef TYPE_1__ fz_document_handler ;
typedef int fz_document ;
typedef int fz_context ;


 int FZ_ERROR_GENERIC ;
 int fz_drop_stream (int *,int *) ;
 TYPE_1__* fz_recognize_document (int *,char const*) ;
 int fz_throw (int *,int ,char*,...) ;
 TYPE_1__ pdf_document_handler ;
 int * stub1 (int *,int *,int *) ;
 int * stub2 (int *,int *) ;

fz_document *
fz_open_accelerated_document_with_stream(fz_context *ctx, const char *magic, fz_stream *stream, fz_stream *accel)
{
 const fz_document_handler *handler;

 if (magic == ((void*)0) || stream == ((void*)0))
  fz_throw(ctx, FZ_ERROR_GENERIC, "no document to open");

 handler = fz_recognize_document(ctx, magic);
 if (!handler)



  fz_throw(ctx, FZ_ERROR_GENERIC, "cannot find document handler for file type: %s", magic);

 if (handler->open_accel_with_stream)
  if (accel || handler->open_with_stream == ((void*)0))
   return handler->open_accel_with_stream(ctx, stream, accel);
 if (accel)
 {



  fz_drop_stream(ctx, accel);
 }
 return handler->open_with_stream(ctx, stream);
}
