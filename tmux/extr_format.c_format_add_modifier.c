
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct format_modifier {char* modifier; size_t size; char** argv; int argc; } ;


 int memcpy (char*,char const*,size_t) ;
 struct format_modifier* xreallocarray (struct format_modifier*,scalar_t__,int) ;

__attribute__((used)) static void
format_add_modifier(struct format_modifier **list, u_int *count,
    const char *c, size_t n, char **argv, int argc)
{
 struct format_modifier *fm;

 *list = xreallocarray(*list, (*count) + 1, sizeof **list);
 fm = &(*list)[(*count)++];

 memcpy(fm->modifier, c, n);
 fm->modifier[n] = '\0';
 fm->size = n;

 fm->argv = argv;
 fm->argc = argc;
}
