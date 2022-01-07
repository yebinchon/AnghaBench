
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* malloc (size_t) ;

__attribute__((used)) static void *default_malloc(void *opaque, size_t size) { (void)opaque; return malloc(size); }
