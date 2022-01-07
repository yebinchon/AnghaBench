
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* z_streamp ;
typedef int ZWRAP_DCtx ;
struct TYPE_3__ {int * state; } ;


 int LOG_WRAPPERD (char*,int) ;
 int ZWRAP_freeDCtx (int *) ;
 int Z_STREAM_ERROR ;

__attribute__((used)) static int ZWRAPD_finishWithError(ZWRAP_DCtx* zwd, z_streamp strm, int error)
{
    LOG_WRAPPERD("- ZWRAPD_finishWithError=%d\n", error);
    ZWRAP_freeDCtx(zwd);
    strm->state = ((void*)0);
    return (error) ? error : Z_STREAM_ERROR;
}
