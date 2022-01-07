
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t WebPMuxError ;


 size_t WEBP_MUX_NOT_ENOUGH_DATA ;
 size_t WEBP_MUX_NOT_FOUND ;
 int assert (int) ;
 char const** kErrorMessages ;

__attribute__((used)) static const char* ErrorString(WebPMuxError err) {
  assert(err <= WEBP_MUX_NOT_FOUND && err >= WEBP_MUX_NOT_ENOUGH_DATA);
  return kErrorMessages[-err];
}
