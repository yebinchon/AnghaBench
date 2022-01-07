
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GRegex ;


 int G_REGEX_CASELESS ;
 int G_REGEX_OPTIMIZE ;
 int * g_regex_new (char const*,int,int ,int *) ;

__attribute__((used)) static inline GRegex * R ( const char *s, int case_sensitive )
{
    return g_regex_new ( s, G_REGEX_OPTIMIZE | ( ( case_sensitive ) ? 0 : G_REGEX_CASELESS ), 0, ((void*)0) );
}
