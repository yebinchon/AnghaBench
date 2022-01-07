
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int images ;
typedef int W_CHAR ;
typedef int AnimatedImage ;


 int ClearAnimatedImage (int *) ;
 int CompareAnimatedImagePair (int *,int *,int,double) ;
 double ExUtilGetFloat (char const*,int*) ;
 int ExUtilGetInt (char const*,int ,int*) ;
 int FREE_WARGV_AND_RETURN (int) ;
 scalar_t__ GET_WARGV (char const**,int) ;
 int GetAnimatedImageVersions (int*,int*) ;
 int Help () ;
 int INIT_WARGV (int,char const**) ;
 int MinimizeAnimationFrames (int *,int) ;
 int ReadAnimatedImage (char const*,int *,int,char const*) ;
 int WFPRINTF (int ,char*,int const*,...) ;
 int WPRINTF (char*,int const*,...) ;
 int memset (int *,int ,int) ;
 int printf (char*,int,int,int,int,int,int) ;
 int stderr ;
 int strcmp (char const*,char*) ;

int main(int argc, const char* argv[]) {
  int return_code = -1;
  int dump_frames = 0;
  const char* dump_folder = ((void*)0);
  double min_psnr = 0.;
  int got_input1 = 0;
  int got_input2 = 0;
  int premultiply = 1;
  int max_diff = 0;
  int i, c;
  const char* files[2] = { ((void*)0), ((void*)0) };
  AnimatedImage images[2];

  INIT_WARGV(argc, argv);

  for (c = 1; c < argc; ++c) {
    int parse_error = 0;
    if (!strcmp(argv[c], "-dump_frames")) {
      if (c < argc - 1) {
        dump_frames = 1;
        dump_folder = (const char*)GET_WARGV(argv, ++c);
      } else {
        parse_error = 1;
      }
    } else if (!strcmp(argv[c], "-min_psnr")) {
      if (c < argc - 1) {
        min_psnr = ExUtilGetFloat(argv[++c], &parse_error);
      } else {
        parse_error = 1;
      }
    } else if (!strcmp(argv[c], "-raw_comparison")) {
      premultiply = 0;
    } else if (!strcmp(argv[c], "-max_diff")) {
      if (c < argc - 1) {
        max_diff = ExUtilGetInt(argv[++c], 0, &parse_error);
      } else {
        parse_error = 1;
      }
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
      if (!got_input1) {
        files[0] = (const char*)GET_WARGV(argv, c);
        got_input1 = 1;
      } else if (!got_input2) {
        files[1] = (const char*)GET_WARGV(argv, c);
        got_input2 = 1;
      } else {
        parse_error = 1;
      }
    }
    if (parse_error) {
      Help();
      FREE_WARGV_AND_RETURN(-1);
    }
  }
  if (argc < 3) {
    Help();
    FREE_WARGV_AND_RETURN(-1);
  }


  if (!got_input2) {
    Help();
    FREE_WARGV_AND_RETURN(-1);
  }

  if (dump_frames) {
    WPRINTF("Dumping decoded frames in: %s\n", (const W_CHAR*)dump_folder);
  }

  memset(images, 0, sizeof(images));
  for (i = 0; i < 2; ++i) {
    WPRINTF("Decoding file: %s\n", (const W_CHAR*)files[i]);
    if (!ReadAnimatedImage(files[i], &images[i], dump_frames, dump_folder)) {
      WFPRINTF(stderr, "Error decoding file: %s\n Aborting.\n",
               (const W_CHAR*)files[i]);
      return_code = -2;
      goto End;
    } else {
      MinimizeAnimationFrames(&images[i], max_diff);
    }
  }

  if (!CompareAnimatedImagePair(&images[0], &images[1],
                                premultiply, min_psnr)) {
    WFPRINTF(stderr, "\nFiles %s and %s differ.\n", (const W_CHAR*)files[0],
             (const W_CHAR*)files[1]);
    return_code = -3;
  } else {
    WPRINTF("\nFiles %s and %s are identical.\n", (const W_CHAR*)files[0],
            (const W_CHAR*)files[1]);
    return_code = 0;
  }
 End:
  ClearAnimatedImage(&images[0]);
  ClearAnimatedImage(&images[1]);
  FREE_WARGV_AND_RETURN(return_code);
}
