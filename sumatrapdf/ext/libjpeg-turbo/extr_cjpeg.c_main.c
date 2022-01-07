
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct jpeg_error_mgr {scalar_t__ num_warnings; int last_addon_message; int first_addon_message; int addon_message_table; } ;
struct jpeg_compress_struct {scalar_t__ next_scanline; scalar_t__ image_height; int in_color_space; int err; } ;
struct cdjpeg_progress_mgr {int dummy; } ;
typedef int j_common_ptr ;
typedef TYPE_1__* cjpeg_source_ptr ;
struct TYPE_6__ {int (* finish_input ) (struct jpeg_compress_struct*,TYPE_1__*) ;int buffer; int (* get_pixel_rows ) (struct jpeg_compress_struct*,TYPE_1__*) ;int (* start_input ) (struct jpeg_compress_struct*,TYPE_1__*) ;int * input_file; } ;
typedef int JDIMENSION ;
typedef int FILE ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int EXIT_WARNING ;
 int FALSE ;
 int JCS_RGB ;
 int JMSG_FIRSTADDONCODE ;
 int JMSG_LASTADDONCODE ;
 int READ_BINARY ;
 int TRUE ;
 int WRITE_BINARY ;
 int ccommand (char***) ;
 int cdjpeg_message_table ;
 int enable_signal_catcher (int ) ;
 int end_progress_monitor (int ) ;
 int exit (int ) ;
 int fclose (int *) ;
 int * fopen (char*,int ) ;
 int fprintf (int ,char*,...) ;
 int free (unsigned char*) ;
 int jpeg_create_compress (struct jpeg_compress_struct*) ;
 int jpeg_default_colorspace (struct jpeg_compress_struct*) ;
 int jpeg_destroy_compress (struct jpeg_compress_struct*) ;
 int jpeg_finish_compress (struct jpeg_compress_struct*) ;
 int jpeg_mem_dest (struct jpeg_compress_struct*,unsigned char**,unsigned long*) ;
 int jpeg_set_defaults (struct jpeg_compress_struct*) ;
 int jpeg_start_compress (struct jpeg_compress_struct*,int ) ;
 int jpeg_std_error (struct jpeg_error_mgr*) ;
 int jpeg_stdio_dest (struct jpeg_compress_struct*,int *) ;
 int jpeg_write_scanlines (struct jpeg_compress_struct*,int ,int ) ;
 scalar_t__ memdst ;
 char* outfilename ;
 int parse_switches (struct jpeg_compress_struct*,int,char**,int ,int ) ;
 scalar_t__* progname ;
 int * read_stdin () ;
 TYPE_1__* select_file_type (struct jpeg_compress_struct*,int *) ;
 int start_progress_monitor (int ,struct cdjpeg_progress_mgr*) ;
 int stderr ;
 int * stdin ;
 int * stdout ;
 int stub1 (struct jpeg_compress_struct*,TYPE_1__*) ;
 int stub2 (struct jpeg_compress_struct*,TYPE_1__*) ;
 int stub3 (struct jpeg_compress_struct*,TYPE_1__*) ;
 int usage () ;
 int * write_stdout () ;

int
main (int argc, char **argv)
{
  struct jpeg_compress_struct cinfo;
  struct jpeg_error_mgr jerr;



  int file_index;
  cjpeg_source_ptr src_mgr;
  FILE * input_file;
  FILE * output_file = ((void*)0);
  unsigned char *outbuffer = ((void*)0);
  unsigned long outsize = 0;
  JDIMENSION num_scanlines;






  progname = argv[0];
  if (progname == ((void*)0) || progname[0] == 0)
    progname = "cjpeg";


  cinfo.err = jpeg_std_error(&jerr);
  jpeg_create_compress(&cinfo);

  jerr.addon_message_table = cdjpeg_message_table;
  jerr.first_addon_message = JMSG_FIRSTADDONCODE;
  jerr.last_addon_message = JMSG_LASTADDONCODE;
  cinfo.in_color_space = JCS_RGB;
  jpeg_set_defaults(&cinfo);







  file_index = parse_switches(&cinfo, argc, argv, 0, FALSE);
  if (file_index < argc-1) {
    fprintf(stderr, "%s: only one input file\n", progname);
    usage();
  }



  if (file_index < argc) {
    if ((input_file = fopen(argv[file_index], READ_BINARY)) == ((void*)0)) {
      fprintf(stderr, "%s: can't open %s\n", progname, argv[file_index]);
      exit(EXIT_FAILURE);
    }
  } else {

    input_file = read_stdin();
  }


  if (outfilename != ((void*)0)) {
    if ((output_file = fopen(outfilename, WRITE_BINARY)) == ((void*)0)) {
      fprintf(stderr, "%s: can't open %s\n", progname, outfilename);
      exit(EXIT_FAILURE);
    }
  } else if (!memdst) {

    output_file = write_stdout();
  }






  src_mgr = select_file_type(&cinfo, input_file);
  src_mgr->input_file = input_file;


  (*src_mgr->start_input) (&cinfo, src_mgr);


  jpeg_default_colorspace(&cinfo);


  file_index = parse_switches(&cinfo, argc, argv, 0, TRUE);







    jpeg_stdio_dest(&cinfo, output_file);


  jpeg_start_compress(&cinfo, TRUE);


  while (cinfo.next_scanline < cinfo.image_height) {
    num_scanlines = (*src_mgr->get_pixel_rows) (&cinfo, src_mgr);
    (void) jpeg_write_scanlines(&cinfo, src_mgr->buffer, num_scanlines);
  }


  (*src_mgr->finish_input) (&cinfo, src_mgr);
  jpeg_finish_compress(&cinfo);
  jpeg_destroy_compress(&cinfo);


  if (input_file != stdin)
    fclose(input_file);
  if (output_file != stdout && output_file != ((void*)0))
    fclose(output_file);





  if (memdst) {
    fprintf(stderr, "Compressed size:  %lu bytes\n", outsize);
    if (outbuffer != ((void*)0))
      free(outbuffer);
  }


  exit(jerr.num_warnings ? EXIT_WARNING : EXIT_SUCCESS);
  return 0;
}
