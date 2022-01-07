
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int size; int bytes; } ;
typedef TYPE_1__ WebPData ;
typedef int W_CHAR ;
typedef int AnimatedImage ;


 int ClearAnimatedImage (int * const) ;
 int ImgIoUtilReadFile (char const*,int *,int *) ;
 scalar_t__ IsGIF (TYPE_1__*) ;
 scalar_t__ IsWebP (TYPE_1__*) ;
 int ReadAnimatedGIF (char const*,int * const,int,char const*) ;
 int ReadAnimatedWebP (char const*,TYPE_1__*,int * const,int,char const*) ;
 int WFPRINTF (int ,char*,int const*) ;
 int WebPDataClear (TYPE_1__*) ;
 int WebPDataInit (TYPE_1__*) ;
 int memset (int * const,int ,int) ;
 int stderr ;

int ReadAnimatedImage(const char filename[], AnimatedImage* const image,
                      int dump_frames, const char dump_folder[]) {
  int ok = 0;
  WebPData webp_data;

  WebPDataInit(&webp_data);
  memset(image, 0, sizeof(*image));

  if (!ImgIoUtilReadFile(filename, &webp_data.bytes, &webp_data.size)) {
    WFPRINTF(stderr, "Error reading file: %s\n", (const W_CHAR*)filename);
    return 0;
  }

  if (IsWebP(&webp_data)) {
    ok = ReadAnimatedWebP(filename, &webp_data, image, dump_frames,
                          dump_folder);
  } else if (IsGIF(&webp_data)) {
    ok = ReadAnimatedGIF(filename, image, dump_frames, dump_folder);
  } else {
    WFPRINTF(stderr,
             "Unknown file type: %s. Supported file types are WebP and GIF\n",
             (const W_CHAR*)filename);
    ok = 0;
  }
  if (!ok) ClearAnimatedImage(image);
  WebPDataClear(&webp_data);
  return ok;
}
