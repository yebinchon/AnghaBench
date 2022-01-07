
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* j_common_ptr ;
typedef int fz_context ;
struct TYPE_4__ {int * client_data; } ;


 int * JZ_CTX_FROM_CINFO (TYPE_1__*) ;
 int fz_free (int *,int *) ;

__attribute__((used)) static void
fz_jpg_mem_term(j_common_ptr cinfo)
{
 if (cinfo->client_data)
 {
  fz_context *ctx = JZ_CTX_FROM_CINFO(cinfo);
  fz_free(ctx, cinfo->client_data);
  cinfo->client_data = ((void*)0);
 }
}
