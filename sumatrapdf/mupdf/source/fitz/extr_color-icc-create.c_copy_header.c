
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Z; int Y; int X; } ;
struct TYPE_5__ {TYPE_1__ illuminant; int platform; int magic; int pcs; int colorSpace; int deviceClass; int version; int size; } ;
typedef TYPE_2__ icHeader ;
typedef int fz_context ;
typedef int fz_buffer ;


 int fz_append_byte_n (int *,int *,int ,int) ;
 int fz_append_int32_be (int *,int *,int ) ;

__attribute__((used)) static void
copy_header(fz_context *ctx, fz_buffer *buffer, icHeader *header)
{
 fz_append_int32_be(ctx, buffer, header->size);
 fz_append_byte_n(ctx, buffer, 0, 4);
 fz_append_int32_be(ctx, buffer, header->version);
 fz_append_int32_be(ctx, buffer, header->deviceClass);
 fz_append_int32_be(ctx, buffer, header->colorSpace);
 fz_append_int32_be(ctx, buffer, header->pcs);
 fz_append_byte_n(ctx, buffer, 0, 12);
 fz_append_int32_be(ctx, buffer, header->magic);
 fz_append_int32_be(ctx, buffer, header->platform);
 fz_append_byte_n(ctx, buffer, 0, 24);
 fz_append_int32_be(ctx, buffer, header->illuminant.X);
 fz_append_int32_be(ctx, buffer, header->illuminant.Y);
 fz_append_int32_be(ctx, buffer, header->illuminant.Z);
 fz_append_byte_n(ctx, buffer, 0, 48);
}
