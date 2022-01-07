
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
 int fread (char*,int,size_t,int *) ;
 scalar_t__ fseek (int *,int ,int ) ;
 int ftell (int *) ;
 int js_endtry (int *) ;
 int js_error (int *,char*,char const*,int ) ;
 int js_free (int *,char*) ;
 int js_loadstring (int *,char const*,char*) ;
 char* js_malloc (int *,int) ;
 int js_throw (int *) ;
 scalar_t__ js_try (int *) ;
 int strerror (int ) ;

void js_loadfile(js_State *J, const char *filename)
{
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

 if (js_try(J)) {
  fclose(f);
  js_throw(J);
 }
 s = js_malloc(J, n + 1);
 js_endtry(J);

 t = fread(s, 1, (size_t)n, f);
 if (t != n) {
  js_free(J, s);
  fclose(f);
  js_error(J, "cannot read data from file '%s': %s", filename, strerror(errno));
 }

 s[n] = 0;

 if (js_try(J)) {
  js_free(J, s);
  fclose(f);
  js_throw(J);
 }

 js_loadstring(J, filename, s);

 js_free(J, s);
 fclose(f);
 js_endtry(J);
}
