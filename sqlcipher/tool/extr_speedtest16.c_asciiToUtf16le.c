
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* malloc (int) ;
 int strlen (char const*) ;

__attribute__((used)) static void *asciiToUtf16le(const char *z){
  int n = strlen(z);
  char *z16;
  int i, j;

  z16 = malloc( n*2 + 2 );
  for(i=j=0; i<=n; i++){
    z16[j++] = z[i];
    z16[j++] = 0;
  }
  return (void*)z16;
}
