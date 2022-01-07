
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* clean_prefix (void*) ;
 int je_free (void*) ;

void
skynet_free(void *ptr) {
 if (ptr == ((void*)0)) return;
 void* rawptr = clean_prefix(ptr);
 je_free(rawptr);
}
