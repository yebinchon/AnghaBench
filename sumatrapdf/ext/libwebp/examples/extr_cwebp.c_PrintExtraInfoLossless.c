
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int width; float height; TYPE_2__* stats; } ;
typedef TYPE_1__ WebPPicture ;
struct TYPE_6__ {int coded_size; float* PSNR; } ;
typedef TYPE_2__ WebPAuxStats ;
typedef int W_CHAR ;


 int PrintFullLosslessInfo (TYPE_2__ const* const,char*) ;
 int WFPRINTF (int ,char*,int const*) ;
 int fprintf (int ,char*,int,float) ;
 int stderr ;

__attribute__((used)) static void PrintExtraInfoLossless(const WebPPicture* const pic,
                                   int short_output,
                                   const char* const file_name) {
  const WebPAuxStats* const stats = pic->stats;
  if (short_output) {
    fprintf(stderr, "%7d %2.2f\n", stats->coded_size, stats->PSNR[3]);
  } else {
    WFPRINTF(stderr, "File:      %s\n", (const W_CHAR*)file_name);
    fprintf(stderr, "Dimension: %d x %d\n", pic->width, pic->height);
    fprintf(stderr, "Output:    %d bytes (%.2f bpp)\n", stats->coded_size,
            8.f * stats->coded_size / pic->width / pic->height);
    PrintFullLosslessInfo(stats, "ARGB");
  }
}
