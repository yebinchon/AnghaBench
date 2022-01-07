
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 size_t BUFSIZ ;
 int EINVAL ;
 int EOF ;
 char* calloc (int,size_t) ;
 int errno ;
 int free (char*) ;
 int getc (int *) ;
 char* reallocarray (char*,int,size_t) ;

char *
fgetln(FILE *fp, size_t *len)
{
 static char *buf = ((void*)0);
 static size_t bufsz = 0;
 size_t r = 0;
 char *p;
 int c, e;

 if (!fp || !len) {
  errno = EINVAL;
  return ((void*)0);
 }
 if (!buf) {
  if (!(buf = calloc(1, BUFSIZ)))
   return ((void*)0);
  bufsz = BUFSIZ;
 }
 while ((c = getc(fp)) != EOF) {
  buf[r++] = c;
  if (r == bufsz) {
   if (!(p = reallocarray(buf, 2, bufsz))) {
    e = errno;
    free(buf);
    errno = e;
    buf = ((void*)0), bufsz = 0;
    return ((void*)0);
   }
   buf = p, bufsz = 2 * bufsz;
  }
  if (c == '\n')
   break;
 }
 return (*len = r) ? buf : ((void*)0);
}
