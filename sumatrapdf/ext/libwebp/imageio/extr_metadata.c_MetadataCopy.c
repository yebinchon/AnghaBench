
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {size_t size; int * bytes; } ;
typedef TYPE_1__ MetadataPayload ;


 scalar_t__ malloc (size_t) ;
 int memcpy (int *,char const*,size_t) ;

int MetadataCopy(const char* metadata, size_t metadata_len,
                 MetadataPayload* const payload) {
  if (metadata == ((void*)0) || metadata_len == 0 || payload == ((void*)0)) return 0;
  payload->bytes = (uint8_t*)malloc(metadata_len);
  if (payload->bytes == ((void*)0)) return 0;
  payload->size = metadata_len;
  memcpy(payload->bytes, metadata, metadata_len);
  return 1;
}
