
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 scalar_t__ UINT64_C (int) ;
 int assert (int) ;
 int memtest_progress_step (unsigned long,unsigned long,char) ;
 int xorshift64star_next () ;

void memtest_fill_random(unsigned long *l, size_t bytes, int interactive) {
    unsigned long step = 4096/sizeof(unsigned long);
    unsigned long words = bytes/sizeof(unsigned long)/2;
    unsigned long iwords = words/step;
    unsigned long off, w, *l1, *l2;
    uint64_t rseed = UINT64_C(0xd13133de9afdb566);
    uint64_t rout = 0;

    assert((bytes & 4095) == 0);
    for (off = 0; off < step; off++) {
        l1 = l+off;
        l2 = l1+words;
        for (w = 0; w < iwords; w++) {
            xorshift64star_next();
            *l1 = *l2 = (unsigned long) rout;
            l1 += step;
            l2 += step;
            if ((w & 0xffff) == 0 && interactive)
                memtest_progress_step(w+iwords*off,words,'R');
        }
    }
}
