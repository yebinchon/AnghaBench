
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ferror (int ) ;
 int fprintf (int ,char*) ;
 scalar_t__ fread (char*,int,int,int ) ;
 int free (char*) ;
 char* realloc (char*,int) ;
 int stderr ;
 int stdin ;

__attribute__((used)) static char *read_stdin(void)
{
 int n = 0;
 int t = 512;
 char *s = ((void*)0);

 for (;;) {
  char *ss = realloc(s, t);
  if (!ss) {
   free(s);
   fprintf(stderr, "cannot allocate storage for stdin contents\n");
   return ((void*)0);
  }
  s = ss;
  n += fread(s + n, 1, t - n - 1, stdin);
  if (n < t - 1)
   break;
  t *= 2;
 }

 if (ferror(stdin)) {
  free(s);
  fprintf(stderr, "error reading stdin\n");
  return ((void*)0);
 }

 s[n] = 0;
 return s;
}
