
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char const*,char const*) ;

__attribute__((used)) static void
display_error_cb(void *p_data, const char *psz_title, const char *psz_text)
{
    (void) p_data;
    printf("error message: title: '%s', text: '%s'\n", psz_title, psz_text);
}
