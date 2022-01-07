
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* extra_info; int width; int height; int extra_info_type; } ;
typedef TYPE_1__ WebPPicture ;


 int fprintf (int ,char*,...) ;
 int stderr ;

__attribute__((used)) static void PrintMapInfo(const WebPPicture* const pic) {
  if (pic->extra_info != ((void*)0)) {
    const int mb_w = (pic->width + 15) / 16;
    const int mb_h = (pic->height + 15) / 16;
    const int type = pic->extra_info_type;
    int x, y;
    for (y = 0; y < mb_h; ++y) {
      for (x = 0; x < mb_w; ++x) {
        const int c = pic->extra_info[x + y * mb_w];
        if (type == 1) {
          fprintf(stderr, "%c", "+."[c]);
        } else if (type == 2) {
          fprintf(stderr, "%c", ".-*X"[c]);
        } else if (type == 3) {
          fprintf(stderr, "%.2d ", c);
        } else if (type == 6 || type == 7) {
          fprintf(stderr, "%3d ", c);
        } else {
          fprintf(stderr, "0x%.2x ", c);
        }
      }
      fprintf(stderr, "\n");
    }
  }
}
