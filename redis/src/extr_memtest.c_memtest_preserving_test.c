
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int backup ;


 int MEMTEST_BACKUP_WORDS ;
 size_t MEMTEST_DECACHE_SIZE ;
 int ULONG_ONEZERO ;
 unsigned long ULONG_ZEROONE ;
 int memcpy (unsigned long*,unsigned long*,size_t) ;
 scalar_t__ memtest_addressing (unsigned long*,size_t,int ) ;
 scalar_t__ memtest_compare_times (unsigned long*,size_t,int,int,int ) ;
 int memtest_fill_random (unsigned long*,size_t,int ) ;
 int memtest_fill_value (unsigned long*,size_t,int ,unsigned long,char,int ) ;

int memtest_preserving_test(unsigned long *m, size_t bytes, int passes) {
    unsigned long backup[MEMTEST_BACKUP_WORDS];
    unsigned long *p = m;
    unsigned long *end = (unsigned long*) (((unsigned char*)m)+(bytes-MEMTEST_DECACHE_SIZE));
    size_t left = bytes;
    int errors = 0;

    if (bytes & 4095) return 0;
    if (bytes < 4096*2) return 0;

    while(left) {



        if (left == 4096) {
            left += 4096;
            p -= 4096/sizeof(unsigned long);
        }

        int pass = 0;
        size_t len = (left > sizeof(backup)) ? sizeof(backup) : left;


        if (len/4096 % 2) len -= 4096;

        memcpy(backup,p,len);
        while(pass != passes) {
            pass++;
            errors += memtest_addressing(p,len,0);
            memtest_fill_random(p,len,0);
            if (bytes >= MEMTEST_DECACHE_SIZE) {
                memtest_compare_times(m,MEMTEST_DECACHE_SIZE,pass,1,0);
                memtest_compare_times(end,MEMTEST_DECACHE_SIZE,pass,1,0);
            }
            errors += memtest_compare_times(p,len,pass,4,0);
            memtest_fill_value(p,len,0,(unsigned long)-1,'S',0);
            if (bytes >= MEMTEST_DECACHE_SIZE) {
                memtest_compare_times(m,MEMTEST_DECACHE_SIZE,pass,1,0);
                memtest_compare_times(end,MEMTEST_DECACHE_SIZE,pass,1,0);
            }
            errors += memtest_compare_times(p,len,pass,4,0);
            memtest_fill_value(p,len,ULONG_ONEZERO,ULONG_ZEROONE,'C',0);
            if (bytes >= MEMTEST_DECACHE_SIZE) {
                memtest_compare_times(m,MEMTEST_DECACHE_SIZE,pass,1,0);
                memtest_compare_times(end,MEMTEST_DECACHE_SIZE,pass,1,0);
            }
            errors += memtest_compare_times(p,len,pass,4,0);
        }
        memcpy(p,backup,len);
        left -= len;
        p += len/sizeof(unsigned long);
    }
    return errors;
}
