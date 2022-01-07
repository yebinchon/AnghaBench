
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int js_State ;
typedef int FILE ;


 int SEEK_END ;
 int SEEK_SET ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fread (char*,int,size_t,int *) ;
 scalar_t__ fseek (int *,int ,int ) ;
 int ftell (int *) ;
 int js_endtry (int *) ;
 int js_error (int *,char*,char const*) ;
 int js_free (int *,char*) ;
 char* js_malloc (int *,int) ;
 int js_ppstring (int *,char const*,char*,int) ;
 int js_throw (int *) ;
 scalar_t__ js_try (int *) ;

void js_ppfile(js_State *J, const char *filename, int minify)
{
 FILE *f;
 char *s;
 int n, t;

 f = fopen(filename, "rb");
 if (!f) {
  js_error(J, "cannot open file: '%s'", filename);
 }

 if (fseek(f, 0, SEEK_END) < 0) {
  fclose(f);
  js_error(J, "cannot seek in file: '%s'", filename);
 }

 n = ftell(f);
 if (n < 0) {
  fclose(f);
  js_error(J, "cannot tell in file: '%s'", filename);
 }

 if (fseek(f, 0, SEEK_SET) < 0) {
  fclose(f);
  js_error(J, "cannot seek in file: '%s'", filename);
 }

 s = js_malloc(J, n + 1);
 if (!s) {
  fclose(f);
  js_error(J, "cannot allocate storage for file contents: '%s'", filename);
 }

 t = fread(s, 1, (size_t)n, f);
 if (t != n) {
  js_free(J, s);
  fclose(f);
  js_error(J, "cannot read data from file: '%s'", filename);
 }

 s[n] = 0;

 if (js_try(J)) {
  js_free(J, s);
  fclose(f);
  js_throw(J);
 }

 js_ppstring(J, filename, s, minify);

 js_free(J, s);
 fclose(f);
 js_endtry(J);
}
