
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * cmsHANDLE ;
typedef int cmsContext ;
struct TYPE_2__ {int* buf; scalar_t__* bits; } ;
typedef TYPE_1__ _cmsMD5 ;


 scalar_t__ _cmsMallocZero (int ,int) ;

__attribute__((used)) static
cmsHANDLE MD5alloc(cmsContext ContextID)
{
    _cmsMD5* ctx = (_cmsMD5*) _cmsMallocZero(ContextID, sizeof(_cmsMD5));
    if (ctx == ((void*)0)) return ((void*)0);

    ctx->buf[0] = 0x67452301;
    ctx->buf[1] = 0xefcdab89;
    ctx->buf[2] = 0x98badcfe;
    ctx->buf[3] = 0x10325476;

    ctx->bits[0] = 0;
    ctx->bits[1] = 0;

    return (cmsHANDLE) ctx;
}
