
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int print (char*,unsigned int,unsigned int,unsigned int,...) ;

__attribute__((used)) static int getprocaddressa(unsigned h, const char *proc)
{
    unsigned p = (unsigned) proc;
    if (p < 0x10000)
    {
        print("getprocaddressa called %c%c%c, ordinal %u\n",
               h, h >> 8, h >> 16, p);
        return h + p * 0x10000;
    }
    print("getprocaddressa called %c%c%c, name %s\n",
           h, h >> 8, h >> 16, proc);
    return h + proc[0] * 0x10000 + proc[1] * 0x1000000;
}
