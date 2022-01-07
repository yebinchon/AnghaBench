
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ size; } ;
struct TYPE_6__ {scalar_t__ size; } ;
struct TYPE_8__ {scalar_t__ size; } ;
struct TYPE_9__ {TYPE_2__ xmp; TYPE_1__ exif; TYPE_3__ iccp; } ;
typedef TYPE_4__ Metadata ;


 int METADATA_EXIF ;
 int METADATA_ICC ;
 int METADATA_XMP ;
 int fprintf (int ,char*,...) ;
 int stderr ;

__attribute__((used)) static void PrintMetadataInfo(const Metadata* const metadata,
                              int metadata_written) {
  if (metadata == ((void*)0) || metadata_written == 0) return;

  fprintf(stderr, "Metadata:\n");
  if (metadata_written & METADATA_ICC) {
    fprintf(stderr, "  * ICC profile:  %6d bytes\n", (int)metadata->iccp.size);
  }
  if (metadata_written & METADATA_EXIF) {
    fprintf(stderr, "  * EXIF data:    %6d bytes\n", (int)metadata->exif.size);
  }
  if (metadata_written & METADATA_XMP) {
    fprintf(stderr, "  * XMP data:     %6d bytes\n", (int)metadata->xmp.size);
  }
}
