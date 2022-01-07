
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int name ;
typedef int FILE ;


 int SEEK_END ;
 int SEEK_SET ;
 scalar_t__ fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,...) ;
 int fseek (int *,int ,int ) ;
 int ftell (int *) ;
 int hexdump (int *,int *) ;
 int stderr ;
 int strcmp (char*,char*) ;
 int strcpy (char*,char*) ;
 int string ;
 int strlen (char*) ;
 char* strrchr (char*,char) ;

int
main(int argc, char **argv)
{
 FILE *fo;
 FILE *fi;
 char name[256];
 char *basename;
 char *p;
 int i, optind, size;

 if (argc < 3)
 {
  fprintf(stderr, "usage: hexdump [-0] [-s] output.c input.dat\n");
  return 1;
 }

 string = 0;
 optind = 1;

 if (!strcmp(argv[optind], "-s")) {
  ++optind;
  string = 1;
 }

 fo = fopen(argv[optind], "wb");
 if (!fo)
 {
  fprintf(stderr, "hexdump: could not open output file '%s'\n", argv[optind]);
  return 1;
 }

 for (i = optind+1; i < argc; i++)
 {
  fi = fopen(argv[i], "rb");
  if (!fi)
  {
   fclose(fo);
   fprintf(stderr, "hexdump: could not open input file '%s'\n", argv[i]);
   return 1;
  }

  basename = strrchr(argv[i], '/');
  if (!basename)
   basename = strrchr(argv[i], '\\');
  if (basename)
   basename++;
  else
   basename = argv[i];

  if (strlen(basename) >= sizeof(name))
  {
   fclose(fi);
   fclose(fo);
   fprintf(stderr, "hexdump: filename '%s' too long\n", basename);
   return 1;
  }

  strcpy(name, basename);
  for (p = name; *p; ++p)
  {
   if (*p == '/' || *p == '.' || *p == '\\' || *p == '-')
    *p = '_';
  }

  fseek(fi, 0, SEEK_END);
  size = ftell(fi);
  fseek(fi, 0, SEEK_SET);

  fprintf(fo, "const unsigned char _binary_%s[%d] =", name, size);
  fprintf(fo, string ? "\n" : " {\n");
  hexdump(fo, fi);
  fprintf(fo, string ? ";\n" : "};\n");
  fprintf(fo, "unsigned int _binary_%s_size = %d;\n", name, size);

  fclose(fi);
 }

 if (fclose(fo))
 {
  fprintf(stderr, "hexdump: could not close output file '%s'\n", argv[1]);
  return 1;
 }

 return 0;
}
