
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_2__* j_common_ptr ;
typedef int fz_context ;
struct TYPE_7__ {TYPE_1__* err; } ;
struct TYPE_6__ {int (* format_message ) (TYPE_2__*,char*) ;} ;


 int FZ_ERROR_GENERIC ;
 int JMSG_LENGTH_MAX ;
 int * JZ_CTX_FROM_CINFO (TYPE_2__*) ;
 int fz_throw (int *,int ,char*,char*) ;
 int stub1 (TYPE_2__*,char*) ;

__attribute__((used)) static void error_exit(j_common_ptr cinfo)
{
 char msg[JMSG_LENGTH_MAX];
 fz_context *ctx = JZ_CTX_FROM_CINFO(cinfo);

 cinfo->err->format_message(cinfo, msg);
 fz_throw(ctx, FZ_ERROR_GENERIC, "jpeg error: %s", msg);
}
