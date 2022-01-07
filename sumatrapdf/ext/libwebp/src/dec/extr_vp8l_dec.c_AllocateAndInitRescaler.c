
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int rescaler_t ;
typedef int WebPRescaler ;
struct TYPE_5__ {int * rescaler; int * rescaler_memory; int status_; } ;
typedef TYPE_1__ VP8LDecoder ;
struct TYPE_6__ {int mb_w; int scaled_width; int mb_h; int scaled_height; } ;
typedef TYPE_2__ VP8Io ;


 int VP8_STATUS_OUT_OF_MEMORY ;
 int WebPRescalerInit (int *,int const,int const,int *,int const,int const,int ,int const,int *) ;
 scalar_t__ WebPSafeMalloc (int const,int) ;
 int assert (int ) ;

__attribute__((used)) static int AllocateAndInitRescaler(VP8LDecoder* const dec, VP8Io* const io) {
  const int num_channels = 4;
  const int in_width = io->mb_w;
  const int out_width = io->scaled_width;
  const int in_height = io->mb_h;
  const int out_height = io->scaled_height;
  const uint64_t work_size = 2 * num_channels * (uint64_t)out_width;
  rescaler_t* work;
  const uint64_t scaled_data_size = (uint64_t)out_width;
  uint32_t* scaled_data;
  const uint64_t memory_size = sizeof(*dec->rescaler) +
                               work_size * sizeof(*work) +
                               scaled_data_size * sizeof(*scaled_data);
  uint8_t* memory = (uint8_t*)WebPSafeMalloc(memory_size, sizeof(*memory));
  if (memory == ((void*)0)) {
    dec->status_ = VP8_STATUS_OUT_OF_MEMORY;
    return 0;
  }
  assert(dec->rescaler_memory == ((void*)0));
  dec->rescaler_memory = memory;

  dec->rescaler = (WebPRescaler*)memory;
  memory += sizeof(*dec->rescaler);
  work = (rescaler_t*)memory;
  memory += work_size * sizeof(*work);
  scaled_data = (uint32_t*)memory;

  WebPRescalerInit(dec->rescaler, in_width, in_height, (uint8_t*)scaled_data,
                   out_width, out_height, 0, num_channels, work);
  return 1;
}
