#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct jpeg_error_mgr {scalar_t__ num_warnings; int /*<<< orphan*/  last_addon_message; int /*<<< orphan*/  first_addon_message; int /*<<< orphan*/  addon_message_table; } ;
struct jpeg_compress_struct {scalar_t__ next_scanline; scalar_t__ image_height; int /*<<< orphan*/  in_color_space; int /*<<< orphan*/  err; } ;
struct cdjpeg_progress_mgr {int dummy; } ;
typedef  int /*<<< orphan*/  j_common_ptr ;
typedef  TYPE_1__* cjpeg_source_ptr ;
struct TYPE_6__ {int /*<<< orphan*/  (* finish_input ) (struct jpeg_compress_struct*,TYPE_1__*) ;int /*<<< orphan*/  buffer; int /*<<< orphan*/  (* get_pixel_rows ) (struct jpeg_compress_struct*,TYPE_1__*) ;int /*<<< orphan*/  (* start_input ) (struct jpeg_compress_struct*,TYPE_1__*) ;int /*<<< orphan*/ * input_file; } ;
typedef  int /*<<< orphan*/  JDIMENSION ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 int /*<<< orphan*/  EXIT_WARNING ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  JCS_RGB ; 
 int /*<<< orphan*/  JMSG_FIRSTADDONCODE ; 
 int /*<<< orphan*/  JMSG_LASTADDONCODE ; 
 int /*<<< orphan*/  READ_BINARY ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  WRITE_BINARY ; 
 int FUNC0 (char***) ; 
 int /*<<< orphan*/  cdjpeg_message_table ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC8 (struct jpeg_compress_struct*) ; 
 int /*<<< orphan*/  FUNC9 (struct jpeg_compress_struct*) ; 
 int /*<<< orphan*/  FUNC10 (struct jpeg_compress_struct*) ; 
 int /*<<< orphan*/  FUNC11 (struct jpeg_compress_struct*) ; 
 int /*<<< orphan*/  FUNC12 (struct jpeg_compress_struct*,unsigned char**,unsigned long*) ; 
 int /*<<< orphan*/  FUNC13 (struct jpeg_compress_struct*) ; 
 int /*<<< orphan*/  FUNC14 (struct jpeg_compress_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct jpeg_error_mgr*) ; 
 int /*<<< orphan*/  FUNC16 (struct jpeg_compress_struct*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct jpeg_compress_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ memdst ; 
 char* outfilename ; 
 int FUNC18 (struct jpeg_compress_struct*,int,char**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__* progname ; 
 int /*<<< orphan*/ * FUNC19 () ; 
 TYPE_1__* FUNC20 (struct jpeg_compress_struct*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,struct cdjpeg_progress_mgr*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * stdin ; 
 int /*<<< orphan*/ * stdout ; 
 int /*<<< orphan*/  FUNC22 (struct jpeg_compress_struct*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC23 (struct jpeg_compress_struct*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC24 (struct jpeg_compress_struct*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC25 () ; 
 int /*<<< orphan*/ * FUNC26 () ; 

int
FUNC27 (int argc, char **argv)
{
  struct jpeg_compress_struct cinfo;
  struct jpeg_error_mgr jerr;
#ifdef PROGRESS_REPORT
  struct cdjpeg_progress_mgr progress;
#endif
  int file_index;
  cjpeg_source_ptr src_mgr;
  FILE * input_file;
  FILE * output_file = NULL;
  unsigned char *outbuffer = NULL;
  unsigned long outsize = 0;
  JDIMENSION num_scanlines;

  /* On Mac, fetch a command line. */
#ifdef USE_CCOMMAND
  argc = ccommand(&argv);
#endif

  progname = argv[0];
  if (progname == NULL || progname[0] == 0)
    progname = "cjpeg";		/* in case C library doesn't provide it */

  /* Initialize the JPEG compression object with default error handling. */
  cinfo.err = FUNC15(&jerr);
  FUNC8(&cinfo);
  /* Add some application-specific error messages (from cderror.h) */
  jerr.addon_message_table = cdjpeg_message_table;
  jerr.first_addon_message = JMSG_FIRSTADDONCODE;
  jerr.last_addon_message = JMSG_LASTADDONCODE;

  /* Now safe to enable signal catcher. */
#ifdef NEED_SIGNAL_CATCHER
  enable_signal_catcher((j_common_ptr) &cinfo);
#endif

  /* Initialize JPEG parameters.
   * Much of this may be overridden later.
   * In particular, we don't yet know the input file's color space,
   * but we need to provide some value for jpeg_set_defaults() to work.
   */

  cinfo.in_color_space = JCS_RGB; /* arbitrary guess */
  FUNC13(&cinfo);

  /* Scan command line to find file names.
   * It is convenient to use just one switch-parsing routine, but the switch
   * values read here are ignored; we will rescan the switches after opening
   * the input file.
   */

  file_index = FUNC18(&cinfo, argc, argv, 0, FALSE);

#ifdef TWO_FILE_COMMANDLINE
  if (!memdst) {
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
  }
#else
  /* Unix style: expect zero or one file name */
  if (file_index < argc-1) {
    FUNC6(stderr, "%s: only one input file\n", progname);
    FUNC25();
  }
#endif /* TWO_FILE_COMMANDLINE */

  /* Open the input file. */
  if (file_index < argc) {
    if ((input_file = FUNC5(argv[file_index], READ_BINARY)) == NULL) {
      FUNC6(stderr, "%s: can't open %s\n", progname, argv[file_index]);
      FUNC3(EXIT_FAILURE);
    }
  } else {
    /* default input file is stdin */
    input_file = FUNC19();
  }

  /* Open the output file. */
  if (outfilename != NULL) {
    if ((output_file = FUNC5(outfilename, WRITE_BINARY)) == NULL) {
      FUNC6(stderr, "%s: can't open %s\n", progname, outfilename);
      FUNC3(EXIT_FAILURE);
    }
  } else if (!memdst) {
    /* default output file is stdout */
    output_file = FUNC26();
  }

#ifdef PROGRESS_REPORT
  start_progress_monitor((j_common_ptr) &cinfo, &progress);
#endif

  /* Figure out the input file format, and set up to read it. */
  src_mgr = FUNC20(&cinfo, input_file);
  src_mgr->input_file = input_file;

  /* Read the input file header to obtain file size & colorspace. */
  (*src_mgr->start_input) (&cinfo, src_mgr);

  /* Now that we know input colorspace, fix colorspace-dependent defaults */
  FUNC9(&cinfo);

  /* Adjust default compression parameters by re-parsing the options */
  file_index = FUNC18(&cinfo, argc, argv, 0, TRUE);

  /* Specify data destination for compression */
#if JPEG_LIB_VERSION >= 80 || defined(MEM_SRCDST_SUPPORTED)
  if (memdst)
    jpeg_mem_dest(&cinfo, &outbuffer, &outsize);
  else
#endif
    FUNC16(&cinfo, output_file);

  /* Start compressor */
  FUNC14(&cinfo, TRUE);

  /* Process data */
  while (cinfo.next_scanline < cinfo.image_height) {
    num_scanlines = (*src_mgr->get_pixel_rows) (&cinfo, src_mgr);
    (void) FUNC17(&cinfo, src_mgr->buffer, num_scanlines);
  }

  /* Finish compression and release memory */
  (*src_mgr->finish_input) (&cinfo, src_mgr);
  FUNC11(&cinfo);
  FUNC10(&cinfo);

  /* Close files, if we opened them */
  if (input_file != stdin)
    FUNC4(input_file);
  if (output_file != stdout && output_file != NULL)
    FUNC4(output_file);

#ifdef PROGRESS_REPORT
  end_progress_monitor((j_common_ptr) &cinfo);
#endif

  if (memdst) {
    FUNC6(stderr, "Compressed size:  %lu bytes\n", outsize);
    if (outbuffer != NULL)
      FUNC7(outbuffer);
  }

  /* All done. */
  FUNC3(jerr.num_warnings ? EXIT_WARNING : EXIT_SUCCESS);
  return 0;			/* suppress no-return-value warnings */
}