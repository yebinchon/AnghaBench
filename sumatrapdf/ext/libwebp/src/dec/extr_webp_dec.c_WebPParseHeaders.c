
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data_size; int data; } ;
typedef TYPE_1__ WebPHeaderStructure ;
typedef scalar_t__ VP8StatusCode ;


 scalar_t__ ParseHeadersInternal (int ,int ,int *,int *,int *,int*,int *,TYPE_1__* const) ;
 scalar_t__ volatile VP8_STATUS_NOT_ENOUGH_DATA ;
 scalar_t__ volatile VP8_STATUS_OK ;
 scalar_t__ VP8_STATUS_UNSUPPORTED_FEATURE ;
 int assert (int ) ;

VP8StatusCode WebPParseHeaders(WebPHeaderStructure* const headers) {

  volatile VP8StatusCode status;
  int has_animation = 0;
  assert(headers != ((void*)0));

  status = ParseHeadersInternal(headers->data, headers->data_size,
                                ((void*)0), ((void*)0), ((void*)0), &has_animation,
                                ((void*)0), headers);
  if (status == VP8_STATUS_OK || status == VP8_STATUS_NOT_ENOUGH_DATA) {



    if (has_animation) {
      status = VP8_STATUS_UNSUPPORTED_FEATURE;
    }
  }
  return status;
}
