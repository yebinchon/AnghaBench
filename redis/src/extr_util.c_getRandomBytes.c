
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct timeval {long tv_sec; long tv_usec; } ;
typedef int seed ;
typedef long pid_t ;
typedef int counter ;
typedef int SHA1_CTX ;
typedef int FILE ;


 int SHA1Final (unsigned char*,int *) ;
 int SHA1Init (int *) ;
 int SHA1Update (int *,unsigned char*,int) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fread (unsigned char*,int,int,int *) ;
 long getpid () ;
 int gettimeofday (struct timeval*,int *) ;
 int memcpy (unsigned char*,unsigned char*,unsigned int) ;

void getRandomBytes(unsigned char *p, size_t len) {

    static int seed_initialized = 0;
    static unsigned char seed[20];
    static uint64_t counter = 0;

    if (!seed_initialized) {




        FILE *fp = fopen("/dev/urandom","r");
        if (fp == ((void*)0) || fread(seed,sizeof(seed),1,fp) != 1) {


            for (unsigned int j = 0; j < sizeof(seed); j++) {
                struct timeval tv;
                gettimeofday(&tv,((void*)0));
                pid_t pid = getpid();
                seed[j] = tv.tv_sec ^ tv.tv_usec ^ pid ^ (long)fp;
            }
        } else {
            seed_initialized = 1;
        }
        if (fp) fclose(fp);
    }

    while(len) {
        unsigned char digest[20];
        SHA1_CTX ctx;
        unsigned int copylen = len > 20 ? 20 : len;

        SHA1Init(&ctx);
        SHA1Update(&ctx, seed, sizeof(seed));
        SHA1Update(&ctx, (unsigned char*)&counter,sizeof(counter));
        SHA1Final(digest, &ctx);
        counter++;

        memcpy(p,digest,copylen);
        len -= copylen;
        p += copylen;
    }
}
