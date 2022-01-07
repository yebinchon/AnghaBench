
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ _isatty (int) ;
 int atoi (char const*) ;
 scalar_t__ getenv (char*) ;
 int gl_char_init () ;
 int gl_error (char*) ;
 int gl_init_done ;
 int gl_setheight (int) ;
 int gl_setwidth (int) ;
 int hist_init () ;

__attribute__((used)) static void
gl_init(void)

{
    const char *cp;
    int w;

    if (gl_init_done < 0) {
 cp = (const char *) getenv("COLUMNS");
 if (cp != ((void*)0)) {
     w = atoi(cp);
     if (w > 20)
         gl_setwidth(w);
 }
 cp = (const char *) getenv("ROWS");
 if (cp != ((void*)0)) {
     w = atoi(cp);
     if (w > 10)
         gl_setheight(w);
 }
        hist_init();
    }
    if (_isatty(0) == 0 || _isatty(1) == 0)
 gl_error("\n*** Error: getline(): not interactive, use stdio.\n");
    gl_char_init();
    gl_init_done = 1;
}
