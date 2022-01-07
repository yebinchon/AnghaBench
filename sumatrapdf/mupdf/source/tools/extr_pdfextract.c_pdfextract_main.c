
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FZ_ERROR_GENERIC ;
 int FZ_STORE_UNLIMITED ;
 int atoi (char*) ;
 int ctx ;
 int doc ;
 int doicc ;
 int dorgb ;
 int exit (int) ;
 int extractobject (int) ;
 int fprintf (int ,char*) ;
 int fz_disable_icc (int ) ;
 int fz_drop_context (int ) ;
 int fz_enable_icc (int ) ;
 int fz_flush_warnings (int ) ;
 int fz_getopt (int,char**,char*) ;
 int fz_new_context (int *,int *,int ) ;
 char* fz_optarg ;
 int fz_optind ;
 int fz_throw (int ,int ,char*,char*) ;
 int pdf_authenticate_password (int ,int ,char*) ;
 int pdf_count_objects (int ,int ) ;
 int pdf_drop_document (int ,int ) ;
 scalar_t__ pdf_needs_password (int ,int ) ;
 int pdf_open_document (int ,char*) ;
 int stderr ;
 int usage () ;

int pdfextract_main(int argc, char **argv)
{
 char *infile;
 char *password = "";
 int c, o;

 while ((c = fz_getopt(argc, argv, "p:rN")) != -1)
 {
  switch (c)
  {
  case 'p': password = fz_optarg; break;
  case 'r': dorgb++; break;
  case 'N': doicc^=1; break;
  default: usage(); break;
  }
 }

 if (fz_optind == argc)
  usage();

 infile = argv[fz_optind++];

 ctx = fz_new_context(((void*)0), ((void*)0), FZ_STORE_UNLIMITED);
 if (!ctx)
 {
  fprintf(stderr, "cannot initialise context\n");
  exit(1);
 }

 if (doicc)
  fz_enable_icc(ctx);
 else
  fz_disable_icc(ctx);

 doc = pdf_open_document(ctx, infile);
 if (pdf_needs_password(ctx, doc))
  if (!pdf_authenticate_password(ctx, doc, password))
   fz_throw(ctx, FZ_ERROR_GENERIC, "cannot authenticate password: %s", infile);

 if (fz_optind == argc)
 {
  int len = pdf_count_objects(ctx, doc);
  for (o = 1; o < len; o++)
   extractobject(o);
 }
 else
 {
  while (fz_optind < argc)
  {
   extractobject(atoi(argv[fz_optind]));
   fz_optind++;
  }
 }

 pdf_drop_document(ctx, doc);
 fz_flush_warnings(ctx);
 fz_drop_context(ctx);
 return 0;
}
