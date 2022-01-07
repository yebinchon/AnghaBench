
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ size; int * bytes; } ;
typedef TYPE_1__ MetadataPayload ;


 int free (int *) ;

void MetadataPayloadDelete(MetadataPayload* const payload) {
  if (payload == ((void*)0)) return;
  free(payload->bytes);
  payload->bytes = ((void*)0);
  payload->size = 0;
}
