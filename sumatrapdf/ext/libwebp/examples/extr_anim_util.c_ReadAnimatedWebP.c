
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int WebPData ;
struct TYPE_8__ {int canvas_width; int canvas_height; int frame_count; int bgcolor; int loop_count; } ;
typedef TYPE_1__ WebPAnimInfo ;
typedef int WebPAnimDecoder ;
typedef int W_CHAR ;
struct TYPE_10__ {int canvas_width; int canvas_height; int format; TYPE_2__* frames; int bgcolor; int loop_count; } ;
struct TYPE_9__ {int duration; scalar_t__ is_key_frame; int * rgba; } ;
typedef TYPE_2__ DecodedFrame ;
typedef TYPE_3__ AnimatedImage ;


 int ANIM_WEBP ;
 int AllocateFrames (TYPE_3__* const,int) ;
 int CleanupTransparentPixels (int*,int,int) ;
 int DumpFrame (char const*,char const*,int,int *,int,int) ;
 int WFPRINTF (int ,char*,int const*) ;
 int WebPAnimDecoderDelete (int *) ;
 int WebPAnimDecoderGetInfo (int *,TYPE_1__*) ;
 int WebPAnimDecoderGetNext (int *,int **,int*) ;
 scalar_t__ WebPAnimDecoderHasMoreFrames (int *) ;
 int * WebPAnimDecoderNew (int const* const,int *) ;
 int assert (int) ;
 int fprintf (int ,char*,...) ;
 int kNumChannels ;
 int memcpy (int *,int *,int) ;
 int memset (TYPE_3__* const,int ,int) ;
 int stderr ;

__attribute__((used)) static int ReadAnimatedWebP(const char filename[],
                            const WebPData* const webp_data,
                            AnimatedImage* const image, int dump_frames,
                            const char dump_folder[]) {
  int ok = 0;
  int dump_ok = 1;
  uint32_t frame_index = 0;
  int prev_frame_timestamp = 0;
  WebPAnimDecoder* dec;
  WebPAnimInfo anim_info;

  memset(image, 0, sizeof(*image));

  dec = WebPAnimDecoderNew(webp_data, ((void*)0));
  if (dec == ((void*)0)) {
    WFPRINTF(stderr, "Error parsing image: %s\n", (const W_CHAR*)filename);
    goto End;
  }

  if (!WebPAnimDecoderGetInfo(dec, &anim_info)) {
    fprintf(stderr, "Error getting global info about the animation\n");
    goto End;
  }


  image->canvas_width = anim_info.canvas_width;
  image->canvas_height = anim_info.canvas_height;
  image->loop_count = anim_info.loop_count;
  image->bgcolor = anim_info.bgcolor;


  if (!AllocateFrames(image, anim_info.frame_count)) return 0;


  while (WebPAnimDecoderHasMoreFrames(dec)) {
    DecodedFrame* curr_frame;
    uint8_t* curr_rgba;
    uint8_t* frame_rgba;
    int timestamp;

    if (!WebPAnimDecoderGetNext(dec, &frame_rgba, &timestamp)) {
      fprintf(stderr, "Error decoding frame #%u\n", frame_index);
      goto End;
    }
    assert(frame_index < anim_info.frame_count);
    curr_frame = &image->frames[frame_index];
    curr_rgba = curr_frame->rgba;
    curr_frame->duration = timestamp - prev_frame_timestamp;
    curr_frame->is_key_frame = 0;
    memcpy(curr_rgba, frame_rgba,
           image->canvas_width * kNumChannels * image->canvas_height);


    CleanupTransparentPixels((uint32_t*)curr_rgba,
                             image->canvas_width, image->canvas_height);

    if (dump_frames && dump_ok) {
      dump_ok = DumpFrame(filename, dump_folder, frame_index, curr_rgba,
                          image->canvas_width, image->canvas_height);
      if (!dump_ok) {
        fprintf(stderr, "Error dumping frames to %s\n", dump_folder);
      }
    }

    ++frame_index;
    prev_frame_timestamp = timestamp;
  }
  ok = dump_ok;
  if (ok) image->format = ANIM_WEBP;

 End:
  WebPAnimDecoderDelete(dec);
  return ok;
}
