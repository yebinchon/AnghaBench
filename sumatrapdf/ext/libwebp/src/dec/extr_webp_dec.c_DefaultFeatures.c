
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WebPBitstreamFeatures ;


 int assert (int ) ;
 int memset (int * const,int ,int) ;

__attribute__((used)) static void DefaultFeatures(WebPBitstreamFeatures* const features) {
  assert(features != ((void*)0));
  memset(features, 0, sizeof(*features));
}
