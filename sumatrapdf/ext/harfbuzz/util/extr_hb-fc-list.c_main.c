
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int hb_font_t ;
typedef int hb_bool_t ;
struct TYPE_4__ {int nfont; int * fonts; } ;
typedef int FcPattern ;
typedef int FcObjectSet ;
typedef TYPE_1__ FcFontSet ;
typedef char FcChar8 ;


 char* FC_CHARSET ;
 int FC_FAMILY ;
 int FC_FILE ;
 int FC_MAJOR ;
 int FC_MINOR ;
 int FC_REVISION ;
 int FC_STYLE ;
 int FcFini () ;
 TYPE_1__* FcFontList (int ,int *,int *) ;
 int FcFontSetDestroy (TYPE_1__*) ;
 int * FcNameParse (char*) ;
 int FcObjectSetAdd (int *,char*) ;
 int * FcObjectSetBuild (int ,int ,int ,char*) ;
 int * FcObjectSetCreate () ;
 int FcObjectSetDestroy (int *) ;
 int * FcPatternCreate () ;
 int FcPatternDel (int ,char*) ;
 int FcPatternDestroy (int *) ;
 char* FcPatternFormat (int ,char const*) ;
 int FcPatternPrint (int ) ;
 int FcStrFree (char*) ;
 int exit (int ) ;
 int fprintf (int ,char*,int,int,int) ;
 int fputs (char*,int ) ;
 int getopt (int,char**,char*) ;
 int getopt_long (int,char**,char*,int ,int *) ;
 int hb_fc_can_render (int *,char const*) ;
 int * hb_fc_font_create (int ) ;
 int hb_font_destroy (int *) ;
 int longopts ;
 int optarg ;
 int optind ;
 int printf (char*,char*) ;
 int stderr ;
 scalar_t__ strdup (int ) ;
 int usage (char*,int) ;

int
main (int argc, char **argv)
{
    int verbose = 0;
    int quiet = 0;
    const FcChar8 *format = ((void*)0);
    int nfont = 0;
    int i;
    FcObjectSet *os = 0;
    FcFontSet *fs;
    FcPattern *pat;
    const char *text;
    i = 1;


    if (!argv[i])
 usage (argv[0], 1);

    text = argv[i];
    i++;

    if (argv[i])
    {
 pat = FcNameParse ((FcChar8 *) argv[i]);
 if (!pat)
 {
     fputs ("Unable to parse the pattern\n", stderr);
     return 1;
 }
 while (argv[++i])
 {
     if (!os)
  os = FcObjectSetCreate ();
     FcObjectSetAdd (os, argv[i]);
 }
    }
    else
 pat = FcPatternCreate ();
    if (quiet && !os)
 os = FcObjectSetCreate ();
    if (!verbose && !format && !os)
 os = FcObjectSetBuild (FC_FAMILY, FC_STYLE, FC_FILE, (char *) 0);
    FcObjectSetAdd (os, FC_CHARSET);
    if (!format)
        format = (const FcChar8 *) "%{=fclist}\n";
    fs = FcFontList (0, pat, os);
    if (os)
 FcObjectSetDestroy (os);
    if (pat)
 FcPatternDestroy (pat);

    if (!quiet && fs)
    {
 int j;

 for (j = 0; j < fs->nfont; j++)
 {
     hb_font_t *font = hb_fc_font_create (fs->fonts[j]);
     hb_bool_t can_render = hb_fc_can_render (font, text);
     hb_font_destroy (font);

     if (!can_render)
  continue;

     FcPatternDel (fs->fonts[j], FC_CHARSET);

     if (verbose)
     {
  FcPatternPrint (fs->fonts[j]);
     }
     else
     {
         FcChar8 *s;

  s = FcPatternFormat (fs->fonts[j], format);
  if (s)
  {
      printf ("%s", s);
      FcStrFree (s);
  }
     }
 }
    }

    if (fs) {
 nfont = fs->nfont;
 FcFontSetDestroy (fs);
    }

    FcFini ();

    return quiet ? (nfont == 0 ? 1 : 0) : 0;
}
