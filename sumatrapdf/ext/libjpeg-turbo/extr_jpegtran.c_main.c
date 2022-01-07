
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct jpeg_error_mgr {scalar_t__ num_warnings; int trace_level; } ;
struct jpeg_decompress_struct {TYPE_1__* mem; void* err; } ;
struct jpeg_compress_struct {TYPE_2__* mem; void* err; } ;
struct cdjpeg_progress_mgr {int dummy; } ;
typedef int jvirt_barray_ptr ;
typedef int j_common_ptr ;
struct TYPE_4__ {int max_memory_to_use; } ;
struct TYPE_3__ {int max_memory_to_use; } ;
typedef int FILE ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int EXIT_WARNING ;
 int FALSE ;
 int READ_BINARY ;
 int TRUE ;
 int WRITE_BINARY ;
 int ccommand (char***) ;
 int copyoption ;
 int enable_signal_catcher (int ) ;
 int end_progress_monitor (int ) ;
 int exit (int ) ;
 int fclose (int *) ;
 int * fopen (char*,int ) ;
 int fprintf (int ,char*,scalar_t__*,...) ;
 int jcopy_markers_execute (struct jpeg_decompress_struct*,struct jpeg_compress_struct*,int ) ;
 int jcopy_markers_setup (struct jpeg_decompress_struct*,int ) ;
 int jpeg_copy_critical_parameters (struct jpeg_decompress_struct*,struct jpeg_compress_struct*) ;
 int jpeg_create_compress (struct jpeg_compress_struct*) ;
 int jpeg_create_decompress (struct jpeg_decompress_struct*) ;
 int jpeg_destroy_compress (struct jpeg_compress_struct*) ;
 int jpeg_destroy_decompress (struct jpeg_decompress_struct*) ;
 int jpeg_finish_compress (struct jpeg_compress_struct*) ;
 int jpeg_finish_decompress (struct jpeg_decompress_struct*) ;
 int * jpeg_read_coefficients (struct jpeg_decompress_struct*) ;
 int jpeg_read_header (struct jpeg_decompress_struct*,int ) ;
 void* jpeg_std_error (struct jpeg_error_mgr*) ;
 int jpeg_stdio_dest (struct jpeg_compress_struct*,int *) ;
 int jpeg_stdio_src (struct jpeg_decompress_struct*,int *) ;
 int jpeg_write_coefficients (struct jpeg_compress_struct*,int *) ;
 int * jtransform_adjust_parameters (struct jpeg_decompress_struct*,struct jpeg_compress_struct*,int *,int *) ;
 int jtransform_execute_transformation (struct jpeg_decompress_struct*,struct jpeg_compress_struct*,int *,int *) ;
 int jtransform_request_workspace (struct jpeg_decompress_struct*,int *) ;
 char* outfilename ;
 int parse_switches (struct jpeg_compress_struct*,int,char**,int ,int ) ;
 scalar_t__* progname ;
 int * read_stdin () ;
 int start_progress_monitor (int ,struct cdjpeg_progress_mgr*) ;
 int stderr ;
 int * stdin ;
 int * stdout ;
 int transformoption ;
 int usage () ;
 int * write_stdout () ;

int
main (int argc, char **argv)
{
  struct jpeg_decompress_struct srcinfo;
  struct jpeg_compress_struct dstinfo;
  struct jpeg_error_mgr jsrcerr, jdsterr;



  jvirt_barray_ptr * src_coef_arrays;
  jvirt_barray_ptr * dst_coef_arrays;
  int file_index;



  FILE * fp;






  progname = argv[0];
  if (progname == ((void*)0) || progname[0] == 0)
    progname = "jpegtran";


  srcinfo.err = jpeg_std_error(&jsrcerr);
  jpeg_create_decompress(&srcinfo);

  dstinfo.err = jpeg_std_error(&jdsterr);
  jpeg_create_compress(&dstinfo);
  file_index = parse_switches(&dstinfo, argc, argv, 0, FALSE);
  jsrcerr.trace_level = jdsterr.trace_level;
  srcinfo.mem->max_memory_to_use = dstinfo.mem->max_memory_to_use;
  if (file_index < argc-1) {
    fprintf(stderr, "%s: only one input file\n", progname);
    usage();
  }



  if (file_index < argc) {
    if ((fp = fopen(argv[file_index], READ_BINARY)) == ((void*)0)) {
      fprintf(stderr, "%s: can't open %s for reading\n", progname, argv[file_index]);
      exit(EXIT_FAILURE);
    }
  } else {

    fp = read_stdin();
  }






  jpeg_stdio_src(&srcinfo, fp);


  jcopy_markers_setup(&srcinfo, copyoption);


  (void) jpeg_read_header(&srcinfo, TRUE);
  src_coef_arrays = jpeg_read_coefficients(&srcinfo);


  jpeg_copy_critical_parameters(&srcinfo, &dstinfo);
  dst_coef_arrays = src_coef_arrays;
  if (fp != stdin)
    fclose(fp);


  if (outfilename != ((void*)0)) {
    if ((fp = fopen(outfilename, WRITE_BINARY)) == ((void*)0)) {
      fprintf(stderr, "%s: can't open %s for writing\n", progname, outfilename);
      exit(EXIT_FAILURE);
    }
  } else {

    fp = write_stdout();
  }


  file_index = parse_switches(&dstinfo, argc, argv, 0, TRUE);


  jpeg_stdio_dest(&dstinfo, fp);


  jpeg_write_coefficients(&dstinfo, dst_coef_arrays);


  jcopy_markers_execute(&srcinfo, &dstinfo, copyoption);
  jpeg_finish_compress(&dstinfo);
  jpeg_destroy_compress(&dstinfo);
  (void) jpeg_finish_decompress(&srcinfo);
  jpeg_destroy_decompress(&srcinfo);


  if (fp != stdout)
    fclose(fp);






  exit(jsrcerr.num_warnings + jdsterr.num_warnings ?EXIT_WARNING:EXIT_SUCCESS);
  return 0;
}
