
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int print (char*,unsigned int) ;

__attribute__((used)) static void cachesync(unsigned v)
{
    print("cachesync called %u\n", v);
}
