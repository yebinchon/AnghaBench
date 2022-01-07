
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ count; scalar_t__* message; } ;
struct TYPE_6__ {scalar_t__* message; int errcode; int stack; int top; } ;
struct TYPE_7__ {TYPE_1__ warn; TYPE_2__ error; } ;
typedef TYPE_3__ fz_context ;


 int FZ_ERROR_NONE ;

__attribute__((used)) static void
fz_init_error_context(fz_context *ctx)
{
 ctx->error.top = ctx->error.stack;
 ctx->error.errcode = FZ_ERROR_NONE;
 ctx->error.message[0] = 0;

 ctx->warn.message[0] = 0;
 ctx->warn.count = 0;
}
