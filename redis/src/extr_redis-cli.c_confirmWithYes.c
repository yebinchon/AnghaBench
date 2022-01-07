
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fflush (int ) ;
 int fileno (int ) ;
 int printf (char*,char*) ;
 int read (int ,char*,int) ;
 int stdin ;
 int stdout ;
 int strcmp (char*,char*) ;

__attribute__((used)) static int confirmWithYes(char *msg) {
    printf("%s (type 'yes' to accept): ", msg);
    fflush(stdout);
    char buf[4];
    int nread = read(fileno(stdin),buf,4);
    buf[3] = '\0';
    return (nread != 0 && !strcmp("yes", buf));
}
