
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int drop; } ;
typedef TYPE_1__ fz_stream ;
typedef int fz_context ;
typedef int FILE ;


 int fz_free ;
 TYPE_1__* fz_open_file_ptr (int *,int *) ;

fz_stream *fz_open_file_ptr_no_close(fz_context *ctx, FILE *file)
{
 fz_stream *stm = fz_open_file_ptr(ctx, file);

 stm->drop = fz_free;
 return stm;
}
