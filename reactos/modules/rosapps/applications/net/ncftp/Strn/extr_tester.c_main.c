
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int c ;
typedef int a ;


 int * Dynscat (char**,char*,char*,...) ;
 char* Strncat (char*,char*,int) ;
 char* Strncpy (char*,char*,int) ;
 char* Strnpcat (char*,char*,int) ;
 char* Strnpcpy (char*,char*,int) ;
 int exit (int ) ;
 int free (char*) ;
 int printf (char*,...) ;
 scalar_t__ strcmp (char*,char*) ;

int main(int argc, char **argv)
{
 char a[8];
 char pad1[32];
 char *b;
 char c[37];
 char pad2[23];
 int i;
 int len1, len2;

 b = Strncpy(a, "hello", sizeof(a));
 b = Strncat(b, "world", sizeof(a));
 printf("1: result=[%s] should be=[%s]\n",
  b,
  "hellowo"
 );

 for (i=0; i<sizeof(c); i++)
  c[i] = 'X';
 b = Strncpy(c, "testing", sizeof(c) - 2);
 for (i=sizeof(c) - 2; i<sizeof(c); i++) {
  if (c[i] != 'X') {
   printf("2: overwrote buffer\n");
   break;
  }
 }

 for (i=0; i<sizeof(c); i++)
  c[i] = 'X';
 b = Strncpy(c, "testing", sizeof(c) - 2);
 b = Strncat(b, " still", sizeof(c) - 2);
 for (i=sizeof(c) - 2; i<sizeof(c); i++) {
  if (c[i] != 'X') {
   printf("3: overwrote buffer\n");
   break;
  }
 }



 b = Strnpcpy(a, "hello", sizeof(a));
 len1 = (int) (b - a);
 b = Strnpcat(a, "world", sizeof(a));
 len2 = (int) (b - a);
 printf("4: result=[%s] should be=[%s] len1=%d len2=%d\n",
  a,
  "hellowo",
  len1,
  len2
 );

 for (i=0; i<sizeof(c); i++)
  c[i] = 'X';
 b = Strnpcpy(c, "testing", sizeof(c) - 2);
 for (i=sizeof(c) - 2; i<sizeof(c); i++) {
  if (c[i] != 'X') {
   printf("5: overwrote buffer\n");
   break;
  }
 }

 for (i=0; i<sizeof(c); i++)
  c[i] = 'X';
 b = Strnpcpy(c, "testing", sizeof(c) - 2);
 b = Strnpcat(c, " still", sizeof(c) - 2);
 for (i=sizeof(c) - 2; i<sizeof(c); i++) {
  if (c[i] != 'X') {
   printf("6: overwrote buffer\n");
   break;
  }
 }


 {
  char *str;

  str = ((void*)0);
  if (Dynscat(&str, "this is a test", 0) == ((void*)0)) {
   printf("7a: fail\n");
  } else if (strcmp(str, "this is a test") != 0) {
   printf("7b: fail\n");
  }
  free(str);

  str = ((void*)0);
  if (Dynscat(&str, "this is a test", 0) == ((void*)0)) {
   printf("7c: fail\n");
  } else if (strcmp(str, "this is a test") != 0) {
   printf("7d: fail\n");
  } else if (Dynscat(&str, " ", "", "and", " ", "so is this", 0) == ((void*)0)) {
   printf("7e: fail\n");
  } else if (strcmp(str, "this is a test and so is this") != 0) {
   printf("7f: fail\n");
  }
  free(str);
 }
 exit(0);
}
