
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int* count; int* state; } ;
typedef TYPE_1__ fz_md5 ;


 int encode (unsigned char*,int*,int) ;
 int fz_md5_update (TYPE_1__*,unsigned char*,int) ;
 int memset (TYPE_1__*,int ,int) ;
 unsigned char* padding ;

void fz_md5_final(fz_md5 *context, unsigned char digest[16])
{
 unsigned char bits[8];
 unsigned index, padlen;


 encode(bits, context->count, 8);


 index = (unsigned)((context->count[0] >> 3) & 0x3f);
 padlen = index < 56 ? 56 - index : 120 - index;
 fz_md5_update(context, padding, padlen);


 fz_md5_update(context, bits, 8);


 encode(digest, context->state, 16);


 memset(context, 0, sizeof(fz_md5));
}
