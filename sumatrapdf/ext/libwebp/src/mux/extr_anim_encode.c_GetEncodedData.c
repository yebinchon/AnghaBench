
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int size; int mem; } ;
typedef TYPE_1__ WebPMemoryWriter ;
struct TYPE_6__ {int size; int bytes; } ;
typedef TYPE_2__ WebPData ;



__attribute__((used)) static void GetEncodedData(const WebPMemoryWriter* const memory,
                           WebPData* const encoded_data) {
  encoded_data->bytes = memory->mem;
  encoded_data->size = memory->size;
}
