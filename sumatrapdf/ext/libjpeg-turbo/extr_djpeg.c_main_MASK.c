#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct jpeg_error_mgr {scalar_t__ num_warnings; int /*<<< orphan*/  last_addon_message; int /*<<< orphan*/  first_addon_message; int /*<<< orphan*/  addon_message_table; } ;
struct jpeg_decompress_struct {scalar_t__ output_scanline; scalar_t__ output_height; int /*<<< orphan*/  err; } ;
struct TYPE_11__ {int /*<<< orphan*/  total_passes; int /*<<< orphan*/  completed_passes; } ;
struct cdjpeg_progress_mgr {TYPE_1__ pub; } ;
typedef  int /*<<< orphan*/  j_common_ptr ;
typedef  TYPE_2__* djpeg_dest_ptr ;
struct TYPE_12__ {int /*<<< orphan*/  (* finish_output ) (struct jpeg_decompress_struct*,TYPE_2__*) ;int /*<<< orphan*/  (* put_pixel_rows ) (struct jpeg_decompress_struct*,TYPE_2__*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  buffer_height; int /*<<< orphan*/  buffer; int /*<<< orphan*/  (* start_output ) (struct jpeg_decompress_struct*,TYPE_2__*) ;int /*<<< orphan*/ * output_file; } ;
typedef  int /*<<< orphan*/  JDIMENSION ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct jpeg_decompress_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 int /*<<< orphan*/  EXIT_WARNING ; 
 int /*<<< orphan*/  FALSE ; 
#define  FMT_BMP 133 
#define  FMT_GIF 132 
#define  FMT_OS2 131 
#define  FMT_PPM 130 
#define  FMT_RLE 129 
#define  FMT_TARGA 128 
 size_t INPUT_BUF_SIZE ; 
 int /*<<< orphan*/  JERR_UNSUPPORTED_FORMAT ; 
 size_t FUNC1 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 int /*<<< orphan*/  JMSG_FIRSTADDONCODE ; 
 int /*<<< orphan*/  JMSG_LASTADDONCODE ; 
 scalar_t__ JPEG_APP0 ; 
 scalar_t__ JPEG_COM ; 
 int /*<<< orphan*/  READ_BINARY ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  WRITE_BINARY ; 
 int FUNC2 (char***) ; 
 int /*<<< orphan*/  cdjpeg_message_table ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*) ; 
 TYPE_2__* FUNC11 (struct jpeg_decompress_struct*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC12 (struct jpeg_decompress_struct*) ; 
 TYPE_2__* FUNC13 (struct jpeg_decompress_struct*) ; 
 TYPE_2__* FUNC14 (struct jpeg_decompress_struct*) ; 
 TYPE_2__* FUNC15 (struct jpeg_decompress_struct*) ; 
 int /*<<< orphan*/  FUNC16 (struct jpeg_decompress_struct*) ; 
 int /*<<< orphan*/  FUNC17 (struct jpeg_decompress_struct*) ; 
 int /*<<< orphan*/  FUNC18 (struct jpeg_decompress_struct*) ; 
 int /*<<< orphan*/  FUNC19 (struct jpeg_decompress_struct*,unsigned char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC20 (struct jpeg_decompress_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct jpeg_decompress_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct jpeg_decompress_struct*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct jpeg_decompress_struct*) ; 
 int /*<<< orphan*/  FUNC24 (struct jpeg_error_mgr*) ; 
 int /*<<< orphan*/  FUNC25 (struct jpeg_decompress_struct*,int /*<<< orphan*/ *) ; 
 scalar_t__ memsrc ; 
 char* outfilename ; 
 int FUNC26 (struct jpeg_decompress_struct*,int,char**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  print_text_marker ; 
 scalar_t__* progname ; 
 int /*<<< orphan*/ * FUNC27 () ; 
 scalar_t__ FUNC28 (unsigned char*,unsigned long) ; 
 int requested_fmt ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,struct cdjpeg_progress_mgr*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * stdin ; 
 int /*<<< orphan*/ * stdout ; 
 int /*<<< orphan*/  FUNC30 (struct jpeg_decompress_struct*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC31 (struct jpeg_decompress_struct*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (struct jpeg_decompress_struct*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC33 () ; 
 int /*<<< orphan*/ * FUNC34 () ; 

int
FUNC35 (int argc, char **argv)
{
  struct jpeg_decompress_struct cinfo;
  struct jpeg_error_mgr jerr;
#ifdef PROGRESS_REPORT
  struct cdjpeg_progress_mgr progress;
#endif
  int file_index;
  djpeg_dest_ptr dest_mgr = NULL;
  FILE * input_file;
  FILE * output_file;
  unsigned char *inbuffer = NULL;
  unsigned long insize = 0;
  JDIMENSION num_scanlines;

  /* On Mac, fetch a command line. */
#ifdef USE_CCOMMAND
  argc = ccommand(&argv);
#endif

  progname = argv[0];
  if (progname == NULL || progname[0] == 0)
    progname = "djpeg";		/* in case C library doesn't provide it */

  /* Initialize the JPEG decompression object with default error handling. */
  cinfo.err = FUNC24(&jerr);
  FUNC16(&cinfo);
  /* Add some application-specific error messages (from cderror.h) */
  jerr.addon_message_table = cdjpeg_message_table;
  jerr.first_addon_message = JMSG_FIRSTADDONCODE;
  jerr.last_addon_message = JMSG_LASTADDONCODE;

  /* Insert custom marker processor for COM and APP12.
   * APP12 is used by some digital camera makers for textual info,
   * so we provide the ability to display it as text.
   * If you like, additional APPn marker types can be selected for display,
   * but don't try to override APP0 or APP14 this way (see libjpeg.txt).
   */
  FUNC22(&cinfo, JPEG_COM, print_text_marker);
  FUNC22(&cinfo, JPEG_APP0+12, print_text_marker);

  /* Now safe to enable signal catcher. */
#ifdef NEED_SIGNAL_CATCHER
  enable_signal_catcher((j_common_ptr) &cinfo);
#endif

  /* Scan command line to find file names. */
  /* It is convenient to use just one switch-parsing routine, but the switch
   * values read here are ignored; we will rescan the switches after opening
   * the input file.
   * (Exception: tracing level set here controls verbosity for COM markers
   * found during jpeg_read_header...)
   */

  file_index = FUNC26(&cinfo, argc, argv, 0, FALSE);

#ifdef TWO_FILE_COMMANDLINE
  /* Must have either -outfile switch or explicit output file name */
  if (outfilename == NULL) {
    if (file_index != argc-2) {
      fprintf(stderr, "%s: must name one input and one output file\n",
	      progname);
      usage();
    }
    outfilename = argv[file_index+1];
  } else {
    if (file_index != argc-1) {
      fprintf(stderr, "%s: must name one input and one output file\n",
	      progname);
      usage();
    }
  }
#else
  /* Unix style: expect zero or one file name */
  if (file_index < argc-1) {
    FUNC9(stderr, "%s: only one input file\n", progname);
    FUNC33();
  }
#endif /* TWO_FILE_COMMANDLINE */

  /* Open the input file. */
  if (file_index < argc) {
    if ((input_file = FUNC8(argv[file_index], READ_BINARY)) == NULL) {
      FUNC9(stderr, "%s: can't open %s\n", progname, argv[file_index]);
      FUNC5(EXIT_FAILURE);
    }
  } else {
    /* default input file is stdin */
    input_file = FUNC27();
  }

  /* Open the output file. */
  if (outfilename != NULL) {
    if ((output_file = FUNC8(outfilename, WRITE_BINARY)) == NULL) {
      FUNC9(stderr, "%s: can't open %s\n", progname, outfilename);
      FUNC5(EXIT_FAILURE);
    }
  } else {
    /* default output file is stdout */
    output_file = FUNC34();
  }

#ifdef PROGRESS_REPORT
  start_progress_monitor((j_common_ptr) &cinfo, &progress);
#endif

  /* Specify data source for decompression */
#if JPEG_LIB_VERSION >= 80 || defined(MEM_SRCDST_SUPPORTED)
  if (memsrc) {
    size_t nbytes;
    do {
      inbuffer = (unsigned char *)realloc(inbuffer, insize + INPUT_BUF_SIZE);
      if (inbuffer == NULL) {
        fprintf(stderr, "%s: memory allocation failure\n", progname);
        exit(EXIT_FAILURE);
      }
      nbytes = JFREAD(input_file, &inbuffer[insize], INPUT_BUF_SIZE);
      if (nbytes < INPUT_BUF_SIZE && ferror(input_file)) {
        if (file_index < argc)
          fprintf(stderr, "%s: can't read from %s\n", progname,
                  argv[file_index]);
        else
          fprintf(stderr, "%s: can't read from stdin\n", progname);
      }
      insize += (unsigned long)nbytes;
    } while (nbytes == INPUT_BUF_SIZE);
    fprintf(stderr, "Compressed size:  %lu bytes\n", insize);
    jpeg_mem_src(&cinfo, inbuffer, insize);
  } else
#endif
    FUNC25(&cinfo, input_file);

  /* Read file header, set default decompression parameters */
  (void) FUNC20(&cinfo, TRUE);

  /* Adjust default decompression parameters by re-parsing the options */
  file_index = FUNC26(&cinfo, argc, argv, 0, TRUE);

  /* Initialize the output module now to let it override any crucial
   * option settings (for instance, GIF wants to force color quantization).
   */
  switch (requested_fmt) {
#ifdef BMP_SUPPORTED
  case FMT_BMP:
    dest_mgr = jinit_write_bmp(&cinfo, FALSE);
    break;
  case FMT_OS2:
    dest_mgr = jinit_write_bmp(&cinfo, TRUE);
    break;
#endif
#ifdef GIF_SUPPORTED
  case FMT_GIF:
    dest_mgr = jinit_write_gif(&cinfo);
    break;
#endif
#ifdef PPM_SUPPORTED
  case FMT_PPM:
    dest_mgr = jinit_write_ppm(&cinfo);
    break;
#endif
#ifdef RLE_SUPPORTED
  case FMT_RLE:
    dest_mgr = jinit_write_rle(&cinfo);
    break;
#endif
#ifdef TARGA_SUPPORTED
  case FMT_TARGA:
    dest_mgr = jinit_write_targa(&cinfo);
    break;
#endif
  default:
    FUNC0(&cinfo, JERR_UNSUPPORTED_FORMAT);
    break;
  }
  dest_mgr->output_file = output_file;

  /* Start decompressor */
  (void) FUNC23(&cinfo);

  /* Write output file header */
  (*dest_mgr->start_output) (&cinfo, dest_mgr);

  /* Process data */
  while (cinfo.output_scanline < cinfo.output_height) {
    num_scanlines = FUNC21(&cinfo, dest_mgr->buffer,
					dest_mgr->buffer_height);
    (*dest_mgr->put_pixel_rows) (&cinfo, dest_mgr, num_scanlines);
  }

#ifdef PROGRESS_REPORT
  /* Hack: count final pass as done in case finish_output does an extra pass.
   * The library won't have updated completed_passes.
   */
  progress.pub.completed_passes = progress.pub.total_passes;
#endif

  /* Finish decompression and release memory.
   * I must do it in this order because output module has allocated memory
   * of lifespan JPOOL_IMAGE; it needs to finish before releasing memory.
   */
  (*dest_mgr->finish_output) (&cinfo, dest_mgr);
  (void) FUNC18(&cinfo);
  FUNC17(&cinfo);

  /* Close files, if we opened them */
  if (input_file != stdin)
    FUNC6(input_file);
  if (output_file != stdout)
    FUNC6(output_file);

#ifdef PROGRESS_REPORT
  end_progress_monitor((j_common_ptr) &cinfo);
#endif

  if (memsrc && inbuffer != NULL)
    FUNC10(inbuffer);

  /* All done. */
  FUNC5(jerr.num_warnings ? EXIT_WARNING : EXIT_SUCCESS);
  return 0;			/* suppress no-return-value warnings */
}