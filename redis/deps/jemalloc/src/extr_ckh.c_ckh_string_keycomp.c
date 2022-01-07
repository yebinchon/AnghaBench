
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int ) ;
 int strcmp (char*,char*) ;

bool
ckh_string_keycomp(const void *k1, const void *k2) {
 assert(k1 != ((void*)0));
 assert(k2 != ((void*)0));

 return !strcmp((char *)k1, (char *)k2);
}
