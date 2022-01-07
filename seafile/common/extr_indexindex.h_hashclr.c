
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memset (unsigned char*,int ,int) ;

__attribute__((used)) static inline void hashclr(unsigned char *hash)
{
    memset(hash, 0, 20);
}
