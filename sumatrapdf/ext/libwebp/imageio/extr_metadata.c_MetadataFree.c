
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int xmp; int iccp; int exif; } ;
typedef TYPE_1__ Metadata ;


 int MetadataPayloadDelete (int *) ;

void MetadataFree(Metadata* const metadata) {
  if (metadata == ((void*)0)) return;
  MetadataPayloadDelete(&metadata->exif);
  MetadataPayloadDelete(&metadata->iccp);
  MetadataPayloadDelete(&metadata->xmp);
}
