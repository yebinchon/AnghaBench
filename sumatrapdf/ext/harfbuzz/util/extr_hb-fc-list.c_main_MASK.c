#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hb_font_t ;
typedef  int /*<<< orphan*/  hb_bool_t ;
struct TYPE_4__ {int nfont; int /*<<< orphan*/ * fonts; } ;
typedef  int /*<<< orphan*/  FcPattern ;
typedef  int /*<<< orphan*/  FcObjectSet ;
typedef  TYPE_1__ FcFontSet ;
typedef  char FcChar8 ;

/* Variables and functions */
 char* FC_CHARSET ; 
 int /*<<< orphan*/  FC_FAMILY ; 
 int /*<<< orphan*/  FC_FILE ; 
 int FC_MAJOR ; 
 int FC_MINOR ; 
 int FC_REVISION ; 
 int /*<<< orphan*/  FC_STYLE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 char* FUNC11 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC16 (char*,int /*<<< orphan*/ ) ; 
 int FUNC17 (int,char**,char*) ; 
 int FUNC18 (int,char**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  longopts ; 
 int /*<<< orphan*/  optarg ; 
 int optind ; 
 int /*<<< orphan*/  FUNC22 (char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (char*,int) ; 

int
FUNC25 (int argc, char **argv)
{
    int			verbose = 0;
    int			quiet = 0;
    const FcChar8	*format = NULL;
    int			nfont = 0;
    int			i;
    FcObjectSet		*os = 0;
    FcFontSet		*fs;
    FcPattern		*pat;
    const char		*text;
#if HAVE_GETOPT_LONG || HAVE_GETOPT
    int			c;

#if HAVE_GETOPT_LONG
    while ((c = getopt_long (argc, argv, "vf:qVh", longopts, NULL)) != -1)
#else
    while ((c = getopt (argc, argv, "vf:qVh")) != -1)
#endif
    {
	switch (c) {
	case 'v':
	    verbose = 1;
	    break;
	case 'f':
	    format = (FcChar8 *) strdup (optarg);
	    break;
	case 'q':
	    quiet = 1;
	    break;
	case 'V':
	    fprintf (stderr, "fontconfig version %d.%d.%d\n",
		     FC_MAJOR, FC_MINOR, FC_REVISION);
	    exit (0);
	case 'h':
	    usage (argv[0], 0);
	default:
	    usage (argv[0], 1);
	}
    }
    i = optind;
#else
    i = 1;
#endif

    if (!argv[i])
	FUNC24 (argv[0], 1);

    text = argv[i];
    i++;

    if (argv[i])
    {
	pat = FUNC3 ((FcChar8 *) argv[i]);
	if (!pat)
	{
	    FUNC16 ("Unable to parse the pattern\n", stderr);
	    return 1;
	}
	while (argv[++i])
	{
	    if (!os)
		os = FUNC6 ();
	    FUNC4 (os, argv[i]);
	}
    }
    else
	pat = FUNC8 ();
    if (quiet && !os)
	os = FUNC6 ();
    if (!verbose && !format && !os)
	os = FUNC5 (FC_FAMILY, FC_STYLE, FC_FILE, (char *) 0);
    FUNC4 (os, FC_CHARSET);
    if (!format)
        format = (const FcChar8 *) "%{=fclist}\n";
    fs = FUNC1 (0, pat, os);
    if (os)
	FUNC7 (os);
    if (pat)
	FUNC10 (pat);

    if (!quiet && fs)
    {
	int	j;

	for (j = 0; j < fs->nfont; j++)
	{
	    hb_font_t *font = FUNC20 (fs->fonts[j]);
	    hb_bool_t can_render = FUNC19 (font, text);
	    FUNC21 (font);

	    if (!can_render)
		continue;

	    FUNC9 (fs->fonts[j], FC_CHARSET);

	    if (verbose)
	    {
		FUNC12 (fs->fonts[j]);
	    }
	    else
	    {
	        FcChar8 *s;

		s = FUNC11 (fs->fonts[j], format);
		if (s)
		{
		    FUNC22 ("%s", s);
		    FUNC13 (s);
		}
	    }
	}
    }

    if (fs) {
	nfont = fs->nfont;
	FUNC2 (fs);
    }

    FUNC0 ();

    return quiet ? (nfont == 0 ? 1 : 0) : 0;
}