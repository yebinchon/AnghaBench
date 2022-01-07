
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_9__ {float width; float height; scalar_t__ use_argb; int argb_stride; scalar_t__ argb; } ;
typedef TYPE_1__ WebPPicture ;


 int ConvertToGray (TYPE_1__*) ;
 int DiffScaleChannel (int *,int,int const*,int,int,float,float,int) ;
 int FREE_WARGV_AND_RETURN (int) ;
 scalar_t__ GET_WARGV (char const**,int) ;
 int Help () ;
 int INIT_WARGV (int,char const**) ;
 scalar_t__ ImgIoUtilWriteFile (char const*,int *,size_t) ;
 size_t ReadPicture (char const*,TYPE_1__*,int) ;
 int SSIMScaleChannel (int *,int,int const*,int,int,float,float,int) ;
 int WebPBlendAlpha (TYPE_1__*,int) ;
 size_t WebPEncodeLosslessBGRA (int const*,float,float,int,int **) ;
 int WebPFree (int *) ;
 int WebPPictureDistortion (TYPE_1__*,TYPE_1__*,int,float*) ;
 int WebPPictureFree (TYPE_1__*) ;
 int WebPPictureInit (TYPE_1__*) ;
 int fprintf (int ,char*,...) ;
 int printf (char*,unsigned int,float,float,float,float,float,float) ;
 int stderr ;
 int strcmp (char const*,char*) ;

int main(int argc, const char* argv[]) {
  WebPPicture pic1, pic2;
  size_t size1 = 0, size2 = 0;
  int ret = 1;
  float disto[5];
  int type = 0;
  int c;
  int help = 0;
  int keep_alpha = 0;
  int scale = 0;
  int use_gray = 0;
  const char* name1 = ((void*)0);
  const char* name2 = ((void*)0);
  const char* output = ((void*)0);

  INIT_WARGV(argc, argv);

  if (!WebPPictureInit(&pic1) || !WebPPictureInit(&pic2)) {
    fprintf(stderr, "Can't init pictures\n");
    FREE_WARGV_AND_RETURN(1);
  }

  for (c = 1; c < argc; ++c) {
    if (!strcmp(argv[c], "-ssim")) {
      type = 1;
    } else if (!strcmp(argv[c], "-psnr")) {
      type = 0;
    } else if (!strcmp(argv[c], "-alpha")) {
      keep_alpha = 1;
    } else if (!strcmp(argv[c], "-scale")) {
      scale = 1;
    } else if (!strcmp(argv[c], "-gray")) {
      use_gray = 1;
    } else if (!strcmp(argv[c], "-h")) {
      help = 1;
      ret = 0;
    } else if (!strcmp(argv[c], "-o")) {
      if (++c == argc) {
        fprintf(stderr, "missing file name after %s option.\n", argv[c - 1]);
        goto End;
      }
      output = (const char*)GET_WARGV(argv, c);
    } else if (name1 == ((void*)0)) {
      name1 = (const char*)GET_WARGV(argv, c);
    } else {
      name2 = (const char*)GET_WARGV(argv, c);
    }
  }
  if (help || name1 == ((void*)0) || name2 == ((void*)0)) {
    if (!help) {
      fprintf(stderr, "Error: missing arguments.\n");
    }
    Help();
    goto End;
  }
  size1 = ReadPicture(name1, &pic1, 1);
  size2 = ReadPicture(name2, &pic2, 1);
  if (size1 == 0 || size2 == 0) goto End;

  if (!keep_alpha) {
    WebPBlendAlpha(&pic1, 0x00000000);
    WebPBlendAlpha(&pic2, 0x00000000);
  }

  if (!WebPPictureDistortion(&pic1, &pic2, type, disto)) {
    fprintf(stderr, "Error while computing the distortion.\n");
    goto End;
  }
  printf("%u %.2f    %.2f %.2f %.2f %.2f [ %.2f bpp ]\n",
         (unsigned int)size1,
         disto[4], disto[0], disto[1], disto[2], disto[3],
         8.f * size1 / pic1.width / pic1.height);

  if (output != ((void*)0)) {
    uint8_t* data = ((void*)0);
    size_t data_size = 0;
    if (pic1.use_argb != pic2.use_argb) {
      fprintf(stderr, "Pictures are not in the same argb format. "
                      "Can't save the difference map.\n");
      goto End;
    }
    if (pic1.use_argb) {
      int n;
      fprintf(stderr, "max differences per channel: ");
      for (n = 0; n < 3; ++n) {
        const int range = (type == 1) ?
          SSIMScaleChannel((uint8_t*)pic1.argb + n, pic1.argb_stride * 4,
                           (const uint8_t*)pic2.argb + n, pic2.argb_stride * 4,
                           4, pic1.width, pic1.height, scale) :
          DiffScaleChannel((uint8_t*)pic1.argb + n, pic1.argb_stride * 4,
                           (const uint8_t*)pic2.argb + n, pic2.argb_stride * 4,
                           4, pic1.width, pic1.height, scale);
        if (range < 0) fprintf(stderr, "\nError computing diff map\n");
        fprintf(stderr, "[%d]", range);
      }
      fprintf(stderr, "\n");
      if (use_gray) ConvertToGray(&pic1);
    } else {
      fprintf(stderr, "Can only compute the difference map in ARGB format.\n");
      goto End;
    }

    data_size = WebPEncodeLosslessBGRA((const uint8_t*)pic1.argb,
                                       pic1.width, pic1.height,
                                       pic1.argb_stride * 4,
                                       &data);
    if (data_size == 0) {
      fprintf(stderr, "Error during lossless encoding.\n");
      goto End;
    }
    ret = ImgIoUtilWriteFile(output, data, data_size) ? 0 : 1;
    WebPFree(data);
    if (ret) goto End;






  }
  ret = 0;

 End:
  WebPPictureFree(&pic1);
  WebPPictureFree(&pic2);
  FREE_WARGV_AND_RETURN(ret);
}
