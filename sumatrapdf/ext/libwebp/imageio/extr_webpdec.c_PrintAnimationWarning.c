
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ has_animation; } ;
struct TYPE_5__ {TYPE_1__ input; } ;
typedef TYPE_2__ WebPDecoderConfig ;


 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void PrintAnimationWarning(const WebPDecoderConfig* const config) {
  if (config->input.has_animation) {
    fprintf(stderr,
            "Error! Decoding of an animated WebP file is not supported.\n"
            "       Use webpmux to extract the individual frames or\n"
            "       vwebp to view this image.\n");
  }
}
