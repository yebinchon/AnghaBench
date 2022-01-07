
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int z_crc_t ;


 int RAND_HEAD_LEN ;
 int ZCR_SEED2 ;
 int init_keys (char const*,unsigned long*,int const*) ;
 int rand () ;
 int srand (unsigned int) ;
 int time (int *) ;
 scalar_t__ zencode (unsigned long*,int const*,int,int) ;

__attribute__((used)) static int crypthead(const char* passwd,
                     unsigned char* buf,
                     int bufSize,
                     unsigned long* pkeys,
                     const z_crc_t* pcrc_32_tab,
                     unsigned long crcForCrypting)
{
    int n;
    int t;
    int c;
    unsigned char header[RAND_HEAD_LEN-2];
    static unsigned calls = 0;

    if (bufSize<RAND_HEAD_LEN)
      return 0;





    if (++calls == 1)
    {
        srand((unsigned)(time(((void*)0)) ^ ZCR_SEED2));
    }
    init_keys(passwd, pkeys, pcrc_32_tab);
    for (n = 0; n < RAND_HEAD_LEN-2; n++)
    {
        c = (rand() >> 7) & 0xff;
        header[n] = (unsigned char)zencode(pkeys, pcrc_32_tab, c, t);
    }

    init_keys(passwd, pkeys, pcrc_32_tab);
    for (n = 0; n < RAND_HEAD_LEN-2; n++)
    {
        buf[n] = (unsigned char)zencode(pkeys, pcrc_32_tab, header[n], t);
    }
    buf[n++] = (unsigned char)zencode(pkeys, pcrc_32_tab, (int)(crcForCrypting >> 16) & 0xff, t);
    buf[n++] = (unsigned char)zencode(pkeys, pcrc_32_tab, (int)(crcForCrypting >> 24) & 0xff, t);
    return n;
}
