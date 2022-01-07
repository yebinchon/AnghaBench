
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sds ;


 int exit (int) ;
 int fileno (int ) ;
 int perror (char*) ;
 int read (int ,char*,int) ;
 int sdscatlen (int ,char*,int) ;
 int sdsempty () ;
 int stdin ;

__attribute__((used)) static sds readArgFromStdin(void) {
    char buf[1024];
    sds arg = sdsempty();

    while(1) {
        int nread = read(fileno(stdin),buf,1024);

        if (nread == 0) break;
        else if (nread == -1) {
            perror("Reading from standard input");
            exit(1);
        }
        arg = sdscatlen(arg,buf,nread);
    }
    return arg;
}
