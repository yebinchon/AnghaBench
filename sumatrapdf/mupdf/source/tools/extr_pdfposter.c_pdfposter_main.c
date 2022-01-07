
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_write_options ;
typedef int pdf_document ;
typedef int fz_context ;


 int FZ_ERROR_GENERIC ;
 int FZ_STORE_UNLIMITED ;
 void* atoi (char*) ;
 int decimatepages (int *,int *) ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int fz_drop_context (int *) ;
 int fz_getopt (int,char**,char*) ;
 int * fz_new_context (int *,int *,int ) ;
 char* fz_optarg ;
 int fz_optind ;
 int fz_throw (int *,int ,char*,char*) ;
 int pdf_authenticate_password (int *,int *,char*) ;
 int pdf_default_write_options ;
 int pdf_drop_document (int *,int *) ;
 scalar_t__ pdf_needs_password (int *,int *) ;
 int * pdf_open_document (int *,char*) ;
 int pdf_save_document (int *,int *,char*,int *) ;
 int stderr ;
 scalar_t__ strstr (char*,char*) ;
 int usage () ;
 void* x_factor ;
 void* y_factor ;

int pdfposter_main(int argc, char **argv)
{
 char *infile;
 char *outfile = "out.pdf";
 char *password = "";
 int c;
 pdf_write_options opts = pdf_default_write_options;
 pdf_document *doc;
 fz_context *ctx;

 while ((c = fz_getopt(argc, argv, "x:y:")) != -1)
 {
  switch (c)
  {
  case 'p': password = fz_optarg; break;
  case 'x': x_factor = atoi(fz_optarg); break;
  case 'y': y_factor = atoi(fz_optarg); break;
  default: usage(); break;
  }
 }

 if (argc - fz_optind < 1)
  usage();

 infile = argv[fz_optind++];

 if (argc - fz_optind > 0 &&
  (strstr(argv[fz_optind], ".pdf") || strstr(argv[fz_optind], ".PDF")))
 {
  outfile = argv[fz_optind++];
 }

 ctx = fz_new_context(((void*)0), ((void*)0), FZ_STORE_UNLIMITED);
 if (!ctx)
 {
  fprintf(stderr, "cannot initialise context\n");
  exit(1);
 }

 doc = pdf_open_document(ctx, infile);
 if (pdf_needs_password(ctx, doc))
  if (!pdf_authenticate_password(ctx, doc, password))
   fz_throw(ctx, FZ_ERROR_GENERIC, "cannot authenticate password: %s", infile);

 decimatepages(ctx, doc);

 pdf_save_document(ctx, doc, outfile, &opts);

 pdf_drop_document(ctx, doc);
 fz_drop_context(ctx);
 return 0;
}
