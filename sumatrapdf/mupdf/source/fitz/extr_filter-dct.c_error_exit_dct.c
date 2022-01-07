
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_2__* j_common_ptr ;
struct TYPE_10__ {int * ctx; } ;
typedef TYPE_3__ fz_dctd ;
typedef int fz_context ;
struct TYPE_9__ {TYPE_1__* err; } ;
struct TYPE_8__ {int (* format_message ) (TYPE_2__*,char*) ;} ;


 int FZ_ERROR_GENERIC ;
 int JMSG_LENGTH_MAX ;
 TYPE_3__* JZ_DCT_STATE_FROM_CINFO (TYPE_2__*) ;
 int fz_throw (int *,int ,char*,char*) ;
 int stub1 (TYPE_2__*,char*) ;

__attribute__((used)) static void error_exit_dct(j_common_ptr cinfo)
{
 char msg[JMSG_LENGTH_MAX];
 fz_dctd *state = JZ_DCT_STATE_FROM_CINFO(cinfo);
 fz_context *ctx = state->ctx;
 cinfo->err->format_message(cinfo, msg);
 fz_throw(ctx, FZ_ERROR_GENERIC, "jpeg error: %s", msg);
}
