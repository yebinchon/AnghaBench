
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;


 int CompressPath (char* const,char const* const,size_t const) ;
 int Strnpcat (char*,char*,int) ;
 char* Strnpcpy (char*,char*,int) ;

void
PathCat(char *const dst, const size_t dsize, const char *const cwd, const char *const src)
{
 char *cp;
 char tmp[512];

 if (src[0] == '/') {
  CompressPath(dst, src, dsize);
  return;
 }
 cp = Strnpcpy(tmp, (char *) cwd, sizeof(tmp) - 1);
 *cp++ = '/';
 *cp = '\0';
 (void) Strnpcat(cp, (char *) src, sizeof(tmp) - (cp - tmp));
 CompressPath(dst, tmp, dsize);
}
