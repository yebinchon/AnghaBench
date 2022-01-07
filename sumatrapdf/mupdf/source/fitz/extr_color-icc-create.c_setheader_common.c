
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* Z; void* Y; void* X; } ;
struct TYPE_5__ {int version; int renderingIntent; int reserved; scalar_t__ creator; TYPE_1__ illuminant; scalar_t__* attributes; scalar_t__ model; scalar_t__ manufacturer; scalar_t__ flags; int platform; int magic; int date; scalar_t__ cmmId; } ;
typedef TYPE_2__ icHeader ;
typedef int fz_context ;


 void* double2XYZtype (int *,float) ;
 int icMagicNumber ;
 int icSigMacintosh ;
 int memset (int ,int ,int) ;
 int setdatetime (int *,int *) ;

__attribute__((used)) static void
setheader_common(fz_context *ctx, icHeader *header)
{
 header->cmmId = 0;
 header->version = 0x02200000;
 setdatetime(ctx, &(header->date));
 header->magic = icMagicNumber;
 header->platform = icSigMacintosh;
 header->flags = 0;
 header->manufacturer = 0;
 header->model = 0;
 header->attributes[0] = 0;
 header->attributes[1] = 0;
 header->renderingIntent = 3;
 header->illuminant.X = double2XYZtype(ctx, (float) 0.9642);
 header->illuminant.Y = double2XYZtype(ctx, (float) 1.0);
 header->illuminant.Z = double2XYZtype(ctx, (float) 0.8249);
 header->creator = 0;
 memset(header->reserved, 0, 44);
}
