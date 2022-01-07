
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SHOW_OVERRIDDEN ;
 int SPECIAL_GLYPH_ARROW ;
 char* ansi_highlight () ;
 char* ansi_normal () ;
 int arg_flags ;
 int printf (char*,char*,char*,char*,char const*,char*,char const*) ;
 char* special_glyph (int ) ;

__attribute__((used)) static int notify_override_overridden(const char *top, const char *bottom) {
        if (!(arg_flags & SHOW_OVERRIDDEN))
                return 0;

        printf("%s%s%s %s %s %s\n",
               ansi_highlight(), "[OVERRIDDEN]", ansi_normal(),
               top, special_glyph(SPECIAL_GLYPH_ARROW), bottom);
        return 1;
}
