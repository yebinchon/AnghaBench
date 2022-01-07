
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; } ;


 int O_RDWR ;
 int SEEK_SET ;
 int atoi (char*) ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int fstat (int,struct stat*) ;
 int lseek (int,unsigned long,int ) ;
 int open (char*,int ) ;
 int perror (char*) ;
 int printf (char*,int,unsigned long) ;
 int rand () ;
 int srand (int ) ;
 int stderr ;
 int time (int *) ;
 int write (int,unsigned char*,int) ;

int main(int argc, char **argv) {
    struct stat stat;
    int fd, cycles;

    if (argc != 3) {
        fprintf(stderr,"Usage: <filename> <cycles>\n");
        exit(1);
    }

    srand(time(((void*)0)));
    char *filename = argv[1];
    cycles = atoi(argv[2]);
    fd = open(filename,O_RDWR);
    if (fd == -1) {
        perror("open");
        exit(1);
    }
    fstat(fd,&stat);

    while(cycles--) {
        unsigned char buf[32];
        unsigned long offset = rand()%stat.st_size;
        int writelen = 1+rand()%31;
        int j;

        for (j = 0; j < writelen; j++) buf[j] = (char)rand();
        lseek(fd,offset,SEEK_SET);
        printf("Writing %d bytes at offset %lu\n", writelen, offset);
        write(fd,buf,writelen);
    }
    return 0;
}
