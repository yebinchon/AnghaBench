
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AnimatedImage ;


 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static int ReadAnimatedGIF(const char filename[], AnimatedImage* const image,
                           int dump_frames, const char dump_folder[]) {
  (void)filename;
  (void)image;
  (void)dump_frames;
  (void)dump_folder;
  fprintf(stderr, "GIF support not compiled. Please install the libgif-dev "
          "package before building.\n");
  return 0;
}
