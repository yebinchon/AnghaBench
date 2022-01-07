
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int is_external_memory; int colorspace; } ;
typedef TYPE_1__ WebPDecBuffer ;
struct TYPE_6__ {scalar_t__ has_alpha; } ;
typedef TYPE_2__ WebPBitstreamFeatures ;


 scalar_t__ WebPIsPremultipliedMode (int ) ;
 int assert (int ) ;

int WebPAvoidSlowMemory(const WebPDecBuffer* const output,
                        const WebPBitstreamFeatures* const features) {
  assert(output != ((void*)0));
  return (output->is_external_memory >= 2) &&
         WebPIsPremultipliedMode(output->colorspace) &&
         (features != ((void*)0) && features->has_alpha);
}
