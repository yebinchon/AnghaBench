
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Strncpy (char* const,char const* const,size_t const) ;
 scalar_t__ strcmp (char const* const,char const* const) ;
 scalar_t__ strncmp (char const* const,char const* const,size_t const) ;

void
AbsoluteToRelative(char *const dst, const size_t dsize, const char *const dir, const char *const root, const size_t rootlen)
{
 *dst = '\0';
 if (strcmp(dir, root) != 0) {
  if (strcmp(root, "/") == 0) {
   (void) Strncpy(dst, dir + 1, dsize);
  } else if ((strncmp(root, dir, rootlen) == 0) && (dir[rootlen] == '/')) {
   (void) Strncpy(dst, dir + rootlen + 1, dsize);
  } else {

   (void) Strncpy(dst, dir, dsize);
  }
 }
}
