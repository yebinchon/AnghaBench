
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gl_error (char*) ;
 scalar_t__ malloc (size_t) ;
 int strcpy (char*,char*) ;
 size_t strlen (char*) ;
 int strncpy (char*,char*,size_t) ;
 char* strpbrk (char*,char*) ;

__attribute__((used)) static char *
hist_save(char *p)


{
    char *s = 0;
    size_t len = strlen(p);
    char *nl = strpbrk(p, "\n\r");

    if (nl) {
        if ((s = (char *) malloc(len)) != 0) {
            strncpy(s, p, len-1);
     s[len-1] = 0;
 }
    } else {
        if ((s = (char *) malloc(len+1)) != 0) {
            strcpy(s, p);
        }
    }
    if (s == 0)
 gl_error("\n*** Error: hist_save() failed on malloc\n");
    return s;
}
