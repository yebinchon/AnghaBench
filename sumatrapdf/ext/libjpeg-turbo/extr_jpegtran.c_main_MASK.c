#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct jpeg_error_mgr {scalar_t__ num_warnings; int /*<<< orphan*/  trace_level; } ;
struct jpeg_decompress_struct {TYPE_1__* mem; void* err; } ;
struct jpeg_compress_struct {TYPE_2__* mem; void* err; } ;
struct cdjpeg_progress_mgr {int dummy; } ;
typedef  int /*<<< orphan*/  jvirt_barray_ptr ;
typedef  int /*<<< orphan*/  j_common_ptr ;
struct TYPE_4__ {int /*<<< orphan*/  max_memory_to_use; } ;
struct TYPE_3__ {int /*<<< orphan*/  max_memory_to_use; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 int /*<<< orphan*/  EXIT_WARNING ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  READ_BINARY ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  WRITE_BINARY ; 
 int FUNC0 (char***) ; 
 int /*<<< orphan*/  copyoption ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,scalar_t__*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct jpeg_decompress_struct*,struct jpeg_compress_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct jpeg_decompress_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct jpeg_decompress_struct*,struct jpeg_compress_struct*) ; 
 int /*<<< orphan*/  FUNC10 (struct jpeg_compress_struct*) ; 
 int /*<<< orphan*/  FUNC11 (struct jpeg_decompress_struct*) ; 
 int /*<<< orphan*/  FUNC12 (struct jpeg_compress_struct*) ; 
 int /*<<< orphan*/  FUNC13 (struct jpeg_decompress_struct*) ; 
 int /*<<< orphan*/  FUNC14 (struct jpeg_compress_struct*) ; 
 int /*<<< orphan*/  FUNC15 (struct jpeg_decompress_struct*) ; 
 int /*<<< orphan*/ * FUNC16 (struct jpeg_decompress_struct*) ; 
 int /*<<< orphan*/  FUNC17 (struct jpeg_decompress_struct*,int /*<<< orphan*/ ) ; 
 void* FUNC18 (struct jpeg_error_mgr*) ; 
 int /*<<< orphan*/  FUNC19 (struct jpeg_compress_struct*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct jpeg_decompress_struct*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (struct jpeg_compress_struct*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC22 (struct jpeg_decompress_struct*,struct jpeg_compress_struct*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (struct jpeg_decompress_struct*,struct jpeg_compress_struct*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (struct jpeg_decompress_struct*,int /*<<< orphan*/ *) ; 
 char* outfilename ; 
 int FUNC25 (struct jpeg_compress_struct*,int,char**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__* progname ; 
 int /*<<< orphan*/ * FUNC26 () ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,struct cdjpeg_progress_mgr*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * stdin ; 
 int /*<<< orphan*/ * stdout ; 
 int /*<<< orphan*/  transformoption ; 
 int /*<<< orphan*/  FUNC28 () ; 
 int /*<<< orphan*/ * FUNC29 () ; 

int
FUNC30 (int argc, char **argv)
{
  struct jpeg_decompress_struct srcinfo;
  struct jpeg_compress_struct dstinfo;
  struct jpeg_error_mgr jsrcerr, jdsterr;
#ifdef PROGRESS_REPORT
  struct cdjpeg_progress_mgr progress;
#endif
  jvirt_barray_ptr * src_coef_arrays;
  jvirt_barray_ptr * dst_coef_arrays;
  int file_index;
  /* We assume all-in-memory processing and can therefore use only a
   * single file pointer for sequential input and output operation. 
   */
  FILE * fp;

  /* On Mac, fetch a command line. */
#ifdef USE_CCOMMAND
  argc = ccommand(&argv);
#endif

  progname = argv[0];
  if (progname == NULL || progname[0] == 0)
    progname = "jpegtran";	/* in case C library doesn't provide it */

  /* Initialize the JPEG decompression object with default error handling. */
  srcinfo.err = FUNC18(&jsrcerr);
  FUNC11(&srcinfo);
  /* Initialize the JPEG compression object with default error handling. */
  dstinfo.err = FUNC18(&jdsterr);
  FUNC10(&dstinfo);

  /* Now safe to enable signal catcher.
   * Note: we assume only the decompression object will have virtual arrays.
   */
#ifdef NEED_SIGNAL_CATCHER
  enable_signal_catcher((j_common_ptr) &srcinfo);
#endif

  /* Scan command line to find file names.
   * It is convenient to use just one switch-parsing routine, but the switch
   * values read here are mostly ignored; we will rescan the switches after
   * opening the input file.  Also note that most of the switches affect the
   * destination JPEG object, so we parse into that and then copy over what
   * needs to affects the source too.
   */

  file_index = FUNC25(&dstinfo, argc, argv, 0, FALSE);
  jsrcerr.trace_level = jdsterr.trace_level;
  srcinfo.mem->max_memory_to_use = dstinfo.mem->max_memory_to_use;

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
    FUNC6(stderr, "%s: only one input file\n", progname);
    FUNC28();
  }
#endif /* TWO_FILE_COMMANDLINE */

  /* Open the input file. */
  if (file_index < argc) {
    if ((fp = FUNC5(argv[file_index], READ_BINARY)) == NULL) {
      FUNC6(stderr, "%s: can't open %s for reading\n", progname, argv[file_index]);
      FUNC3(EXIT_FAILURE);
    }
  } else {
    /* default input file is stdin */
    fp = FUNC26();
  }

#ifdef PROGRESS_REPORT
  start_progress_monitor((j_common_ptr) &dstinfo, &progress);
#endif

  /* Specify data source for decompression */
  FUNC20(&srcinfo, fp);

  /* Enable saving of extra markers that we want to copy */
  FUNC8(&srcinfo, copyoption);

  /* Read file header */
  (void) FUNC17(&srcinfo, TRUE);

  /* Any space needed by a transform option must be requested before
   * jpeg_read_coefficients so that memory allocation will be done right.
   */
#if TRANSFORMS_SUPPORTED
  /* Fail right away if -perfect is given and transformation is not perfect.
   */
  if (!jtransform_request_workspace(&srcinfo, &transformoption)) {
    fprintf(stderr, "%s: transformation is not perfect\n", progname);
    exit(EXIT_FAILURE);
  }
#endif

  /* Read source file as DCT coefficients */
  src_coef_arrays = FUNC16(&srcinfo);

  /* Initialize destination compression parameters from source values */
  FUNC9(&srcinfo, &dstinfo);

  /* Adjust destination parameters if required by transform options;
   * also find out which set of coefficient arrays will hold the output.
   */
#if TRANSFORMS_SUPPORTED
  dst_coef_arrays = jtransform_adjust_parameters(&srcinfo, &dstinfo,
						 src_coef_arrays,
						 &transformoption);
#else
  dst_coef_arrays = src_coef_arrays;
#endif

  /* Close input file, if we opened it.
   * Note: we assume that jpeg_read_coefficients consumed all input
   * until JPEG_REACHED_EOI, and that jpeg_finish_decompress will
   * only consume more while (! cinfo->inputctl->eoi_reached).
   * We cannot call jpeg_finish_decompress here since we still need the
   * virtual arrays allocated from the source object for processing.
   */
  if (fp != stdin)
    FUNC4(fp);

  /* Open the output file. */
  if (outfilename != NULL) {
    if ((fp = FUNC5(outfilename, WRITE_BINARY)) == NULL) {
      FUNC6(stderr, "%s: can't open %s for writing\n", progname, outfilename);
      FUNC3(EXIT_FAILURE);
    }
  } else {
    /* default output file is stdout */
    fp = FUNC29();
  }

  /* Adjust default compression parameters by re-parsing the options */
  file_index = FUNC25(&dstinfo, argc, argv, 0, TRUE);

  /* Specify data destination for compression */
  FUNC19(&dstinfo, fp);

  /* Start compressor (note no image data is actually written here) */
  FUNC21(&dstinfo, dst_coef_arrays);

  /* Copy to the output file any extra markers that we want to preserve */
  FUNC7(&srcinfo, &dstinfo, copyoption);

  /* Execute image transformation, if any */
#if TRANSFORMS_SUPPORTED
  jtransform_execute_transformation(&srcinfo, &dstinfo,
				    src_coef_arrays,
				    &transformoption);
#endif

  /* Finish compression and release memory */
  FUNC14(&dstinfo);
  FUNC12(&dstinfo);
  (void) FUNC15(&srcinfo);
  FUNC13(&srcinfo);

  /* Close output file, if we opened it */
  if (fp != stdout)
    FUNC4(fp);

#ifdef PROGRESS_REPORT
  end_progress_monitor((j_common_ptr) &dstinfo);
#endif

  /* All done. */
  FUNC3(jsrcerr.num_warnings + jdsterr.num_warnings ?EXIT_WARNING:EXIT_SUCCESS);
  return 0;			/* suppress no-return-value warnings */
}