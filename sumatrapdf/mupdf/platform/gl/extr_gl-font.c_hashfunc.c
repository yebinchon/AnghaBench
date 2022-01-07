
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key {int dummy; } ;



__attribute__((used)) static unsigned int hashfunc(struct key *key)
{
 unsigned char *buf = (unsigned char *)key;
 unsigned int len = sizeof(struct key);
 unsigned int h = 0;
 while (len--)
  h = *buf++ + (h << 6) + (h << 16) - h;
 return h;
}
