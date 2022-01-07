
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_Writer ;
typedef int lua_State ;
struct TYPE_3__ {int strip; int status; int sb; void* wdata; int wfunc; int * pt; } ;
typedef int GCproto ;
typedef TYPE_1__ BCWriteCtx ;


 int G (int ) ;
 int cpwriter ;
 int lj_buf_free (int ,int *) ;
 int lj_buf_init (int *,int *) ;
 int lj_vm_cpcall (int *,int *,TYPE_1__*,int ) ;
 int sbufL (int *) ;

int lj_bcwrite(lua_State *L, GCproto *pt, lua_Writer writer, void *data,
       int strip)
{
  BCWriteCtx ctx;
  int status;
  ctx.pt = pt;
  ctx.wfunc = writer;
  ctx.wdata = data;
  ctx.strip = strip;
  ctx.status = 0;
  lj_buf_init(L, &ctx.sb);
  status = lj_vm_cpcall(L, ((void*)0), &ctx, cpwriter);
  if (status == 0) status = ctx.status;
  lj_buf_free(G(sbufL(&ctx.sb)), &ctx.sb);
  return status;
}
