
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 unsigned int tolower (int const) ;

__attribute__((used)) static unsigned int
hash_link_ref(const uint8_t *link_ref, size_t length)
{
 size_t i;
 unsigned int hash = 0;

 for (i = 0; i < length; ++i)
  hash = tolower(link_ref[i]) + (hash << 6) + (hash << 16) - hash;

 return hash;
}
