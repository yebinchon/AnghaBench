
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int blend_method; int dispose_method; int y_offset; int x_offset; int duration; } ;
typedef TYPE_1__ WebPMuxFrameInfo ;
typedef int WebPMuxAnimDispose ;


 int WEBP_MUX_BLEND ;
 int WEBP_MUX_NO_BLEND ;
 int WarnAboutOddOffset (TYPE_1__* const) ;
 int sscanf (char const*,char*,int *,int *,int *,int*,char*,char*,int*) ;

__attribute__((used)) static int ParseFrameArgs(const char* args, WebPMuxFrameInfo* const info) {
  int dispose_method, dummy;
  char plus_minus, blend_method;
  const int num_args = sscanf(args, "+%d+%d+%d+%d%c%c+%d", &info->duration,
                              &info->x_offset, &info->y_offset, &dispose_method,
                              &plus_minus, &blend_method, &dummy);
  switch (num_args) {
    case 1:
      info->x_offset = info->y_offset = 0;
    case 3:
      dispose_method = 0;
    case 4:
      plus_minus = '+';
      blend_method = 'b';
    case 6:
      break;
    case 2:
    case 5:
    default:
      return 0;
  }

  WarnAboutOddOffset(info);



  info->dispose_method = (WebPMuxAnimDispose)dispose_method;

  if (blend_method != 'b') return 0;
  if (plus_minus != '-' && plus_minus != '+') return 0;
  info->blend_method =
      (plus_minus == '+') ? WEBP_MUX_BLEND : WEBP_MUX_NO_BLEND;
  return 1;
}
