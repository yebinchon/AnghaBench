
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void aes_key_t ;


 scalar_t__ kmem_alloc (int,int) ;

void *
aes_alloc_keysched(size_t *size, int kmflag)
{
 aes_key_t *keysched;

 keysched = (aes_key_t *)kmem_alloc(sizeof (aes_key_t), kmflag);
 if (keysched != ((void*)0)) {
  *size = sizeof (aes_key_t);
  return (keysched);
 }
 return (((void*)0));
}
