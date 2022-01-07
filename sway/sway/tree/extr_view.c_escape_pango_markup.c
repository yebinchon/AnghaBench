
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* calloc (size_t,int) ;
 size_t escape_markup_text (char const*,char*) ;

__attribute__((used)) static char *escape_pango_markup(const char *buffer) {
 size_t length = escape_markup_text(buffer, ((void*)0));
 char *escaped_title = calloc(length + 1, sizeof(char));
 escape_markup_text(buffer, escaped_title);
 return escaped_title;
}
