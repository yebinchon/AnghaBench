
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_write_options ;


 int FZ_STORE_UNLIMITED ;
 int create_page (char*) ;
 int ctx ;
 int doc ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int fz_drop_context (int ) ;
 int fz_flush_warnings (int ) ;
 int fz_getopt (int,char**,char*) ;
 int fz_new_context (int *,int *,int ) ;
 char* fz_optarg ;
 int fz_optind ;
 int pdf_create_document (int ) ;
 int pdf_default_write_options ;
 int pdf_drop_document (int ,int ) ;
 int pdf_parse_write_options (int ,int *,char*) ;
 int pdf_save_document (int ,int ,char*,int *) ;
 int stderr ;
 int usage () ;

int pdfcreate_main(int argc, char **argv)
{
 pdf_write_options opts = pdf_default_write_options;
 char *output = "out.pdf";
 char *flags = "compress";
 int i, c;

 while ((c = fz_getopt(argc, argv, "o:O:")) != -1)
 {
  switch (c)
  {
  case 'o': output = fz_optarg; break;
  case 'O': flags = fz_optarg; break;
  default: usage(); break;
  }
 }

 if (fz_optind == argc)
  usage();

 ctx = fz_new_context(((void*)0), ((void*)0), FZ_STORE_UNLIMITED);
 if (!ctx)
 {
  fprintf(stderr, "cannot initialise context\n");
  exit(1);
 }

 pdf_parse_write_options(ctx, &opts, flags);

 doc = pdf_create_document(ctx);

 for (i = fz_optind; i < argc; ++i)
  create_page(argv[i]);

 pdf_save_document(ctx, doc, output, &opts);

 pdf_drop_document(ctx, doc);

 fz_flush_warnings(ctx);
 fz_drop_context(ctx);
 return 0;
}
