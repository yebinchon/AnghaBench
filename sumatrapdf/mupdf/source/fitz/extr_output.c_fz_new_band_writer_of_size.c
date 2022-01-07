
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int fz_output ;
typedef int fz_context ;
struct TYPE_4__ {int * out; } ;
typedef TYPE_1__ fz_band_writer ;


 TYPE_1__* fz_calloc (int *,size_t,int) ;

fz_band_writer *fz_new_band_writer_of_size(fz_context *ctx, size_t size, fz_output *out)
{
 fz_band_writer *writer = fz_calloc(ctx, size, 1);
 writer->out = out;
 return writer;
}
