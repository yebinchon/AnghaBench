
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {int * seed48; } ;
typedef TYPE_1__ fz_context ;


 int memcpy (int *,int *,int) ;

uint16_t *fz_seed48(fz_context *ctx, uint16_t *s)
{
 static uint16_t p[3];
 memcpy(p, ctx->seed48, sizeof p);
 memcpy(ctx->seed48, s, sizeof p);
 return p;
}
