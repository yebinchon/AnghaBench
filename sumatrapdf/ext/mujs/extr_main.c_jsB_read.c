
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;
typedef int FILE ;


 int SEEK_END ;
 int SEEK_SET ;
 int errno ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fread (char*,int,int,int *) ;
 int free (char*) ;
 scalar_t__ fseek (int *,int ,int ) ;
 int ftell (int *) ;
 int js_error (int *,char*,...) ;
 int js_pushstring (int *,char*) ;
 char* js_tostring (int *,int) ;
 char* malloc (int) ;
 int strerror (int ) ;

__attribute__((used)) static void jsB_read(js_State *J)
{
 const char *filename = js_tostring(J, 1);
 FILE *f;
 char *s;
 int n, t;

 f = fopen(filename, "rb");
 if (!f) {
  js_error(J, "cannot open file '%s': %s", filename, strerror(errno));
 }

 if (fseek(f, 0, SEEK_END) < 0) {
  fclose(f);
  js_error(J, "cannot seek in file '%s': %s", filename, strerror(errno));
 }

 n = ftell(f);
 if (n < 0) {
  fclose(f);
  js_error(J, "cannot tell in file '%s': %s", filename, strerror(errno));
 }

 if (fseek(f, 0, SEEK_SET) < 0) {
  fclose(f);
  js_error(J, "cannot seek in file '%s': %s", filename, strerror(errno));
 }

 s = malloc(n + 1);
 if (!s) {
  fclose(f);
  js_error(J, "out of memory");
 }

 t = fread(s, 1, n, f);
 if (t != n) {
  free(s);
  fclose(f);
  js_error(J, "cannot read data from file '%s': %s", filename, strerror(errno));
 }
 s[n] = 0;

 js_pushstring(J, s);
 free(s);
 fclose(f);
}
