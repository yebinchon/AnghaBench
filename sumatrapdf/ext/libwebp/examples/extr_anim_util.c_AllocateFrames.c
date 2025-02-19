
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ is_key_frame; scalar_t__ duration; struct TYPE_6__* rgba; } ;
typedef TYPE_1__ uint8_t ;
typedef int const uint64_t ;
typedef size_t uint32_t ;
struct TYPE_7__ {int const canvas_height; size_t num_frames; TYPE_1__* raw_mem; TYPE_1__* frames; scalar_t__ canvas_width; } ;
typedef TYPE_1__ DecodedFrame ;
typedef TYPE_3__ AnimatedImage ;


 int CheckSizeForOverflow (int const) ;
 int WebPFree (TYPE_1__*) ;
 scalar_t__ WebPMalloc (size_t) ;
 int const kNumChannels ;

__attribute__((used)) static int AllocateFrames(AnimatedImage* const image, uint32_t num_frames) {
  uint32_t i;
  uint8_t* mem = ((void*)0);
  DecodedFrame* frames = ((void*)0);
  const uint64_t rgba_size =
      (uint64_t)image->canvas_width * kNumChannels * image->canvas_height;
  const uint64_t total_size = (uint64_t)num_frames * rgba_size * sizeof(*mem);
  const uint64_t total_frame_size = (uint64_t)num_frames * sizeof(*frames);
  if (!CheckSizeForOverflow(total_size) ||
      !CheckSizeForOverflow(total_frame_size)) {
    return 0;
  }
  mem = (uint8_t*)WebPMalloc((size_t)total_size);
  frames = (DecodedFrame*)WebPMalloc((size_t)total_frame_size);

  if (mem == ((void*)0) || frames == ((void*)0)) {
    WebPFree(mem);
    WebPFree(frames);
    return 0;
  }
  WebPFree(image->raw_mem);
  image->num_frames = num_frames;
  image->frames = frames;
  for (i = 0; i < num_frames; ++i) {
    frames[i].rgba = mem + i * rgba_size;
    frames[i].duration = 0;
    frames[i].is_key_frame = 0;
  }
  image->raw_mem = mem;
  return 1;
}
