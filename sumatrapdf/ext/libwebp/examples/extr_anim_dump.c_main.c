
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef int out_file ;
typedef int image ;
typedef int WebPOutputFileFormat ;
struct TYPE_13__ {int stride; int size; int rgba; } ;
struct TYPE_14__ {TYPE_2__ RGBA; } ;
struct TYPE_15__ {int is_external_memory; int width; int height; TYPE_3__ u; int colorspace; } ;
typedef TYPE_4__ WebPDecBuffer ;
typedef int const W_CHAR ;
struct TYPE_16__ {size_t num_frames; int canvas_width; int canvas_height; TYPE_1__* frames; } ;
struct TYPE_12__ {int rgba; } ;
typedef TYPE_5__ AnimatedImage ;


 int ClearAnimatedImage (TYPE_5__*) ;
 int FREE_WARGV_AND_RETURN (int) ;
 void* GET_WARGV (char const**,int) ;
 int GetAnimatedImageVersions (int*,int*) ;
 int Help () ;
 int INIT_WARGV (int,char const**) ;
 int MODE_RGBA ;
 int PAM ;
 int PNG ;
 int ReadAnimatedImage (char const*,TYPE_5__*,int ,int *) ;
 int TIFF ;
 int const* TO_W_CHAR (char*) ;
 int WFPRINTF (int ,char*,int const*) ;
 int WPRINTF (char*,int const* const,int const*,int const*,int const*) ;
 int WSNPRINTF (int const*,int,char*,int const*,int const*,size_t,int const*) ;
 int WebPFreeDecBuffer (TYPE_4__*) ;
 int WebPInitDecBuffer (TYPE_4__*) ;
 int WebPSaveImage (TYPE_4__*,int ,char const*) ;
 int fprintf (int ,char*,char const*) ;
 int memset (TYPE_5__*,int ,int) ;
 int printf (char*,int,int,int,int,int,int) ;
 int stderr ;
 int strcmp (char const*,char*) ;

int main(int argc, const char* argv[]) {
  int error = 0;
  const W_CHAR* dump_folder = TO_W_CHAR(".");
  const W_CHAR* prefix = TO_W_CHAR("dump_");
  const W_CHAR* suffix = TO_W_CHAR("png");
  WebPOutputFileFormat format = PNG;
  int c;

  INIT_WARGV(argc, argv);

  if (argc < 2) {
    Help();
    FREE_WARGV_AND_RETURN(-1);
  }

  for (c = 1; !error && c < argc; ++c) {
    if (!strcmp(argv[c], "-folder")) {
      if (c + 1 == argc) {
        fprintf(stderr, "missing argument after option '%s'\n", argv[c]);
        error = 1;
        break;
      }
      dump_folder = GET_WARGV(argv, ++c);
    } else if (!strcmp(argv[c], "-prefix")) {
      if (c + 1 == argc) {
        fprintf(stderr, "missing argument after option '%s'\n", argv[c]);
        error = 1;
        break;
      }
      prefix = GET_WARGV(argv, ++c);
    } else if (!strcmp(argv[c], "-tiff")) {
      format = TIFF;
      suffix = TO_W_CHAR("tiff");
    } else if (!strcmp(argv[c], "-pam")) {
      format = PAM;
      suffix = TO_W_CHAR("pam");
    } else if (!strcmp(argv[c], "-h") || !strcmp(argv[c], "-help")) {
      Help();
      FREE_WARGV_AND_RETURN(0);
    } else if (!strcmp(argv[c], "-version")) {
      int dec_version, demux_version;
      GetAnimatedImageVersions(&dec_version, &demux_version);
      printf("WebP Decoder version: %d.%d.%d\nWebP Demux version: %d.%d.%d\n",
             (dec_version >> 16) & 0xff, (dec_version >> 8) & 0xff,
             (dec_version >> 0) & 0xff,
             (demux_version >> 16) & 0xff, (demux_version >> 8) & 0xff,
             (demux_version >> 0) & 0xff);
      FREE_WARGV_AND_RETURN(0);
    } else {
      uint32_t i;
      AnimatedImage image;
      const W_CHAR* const file = GET_WARGV(argv, c);
      memset(&image, 0, sizeof(image));
      WPRINTF("Decoding file: %s as %s/%sxxxx.%s\n",
              file, dump_folder, prefix, suffix);
      if (!ReadAnimatedImage((const char*)file, &image, 0, ((void*)0))) {
        WFPRINTF(stderr, "Error decoding file: %s\n Aborting.\n", file);
        error = 1;
        break;
      }
      for (i = 0; !error && i < image.num_frames; ++i) {
        W_CHAR out_file[1024];
        WebPDecBuffer buffer;
        WebPInitDecBuffer(&buffer);
        buffer.colorspace = MODE_RGBA;
        buffer.is_external_memory = 1;
        buffer.width = image.canvas_width;
        buffer.height = image.canvas_height;
        buffer.u.RGBA.rgba = image.frames[i].rgba;
        buffer.u.RGBA.stride = buffer.width * sizeof(uint32_t);
        buffer.u.RGBA.size = buffer.u.RGBA.stride * buffer.height;
        WSNPRINTF(out_file, sizeof(out_file), "%s/%s%.4d.%s",
                  dump_folder, prefix, i, suffix);
        if (!WebPSaveImage(&buffer, format, (const char*)out_file)) {
          WFPRINTF(stderr, "Error while saving image '%s'\n", out_file);
          error = 1;
        }
        WebPFreeDecBuffer(&buffer);
      }
      ClearAnimatedImage(&image);
    }
  }
  FREE_WARGV_AND_RETURN(error ? 1 : 0);
}
