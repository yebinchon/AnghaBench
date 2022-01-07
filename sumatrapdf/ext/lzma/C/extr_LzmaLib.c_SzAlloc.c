
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* MyAlloc (size_t) ;

__attribute__((used)) static void *SzAlloc(void *p, size_t size) { p = p; return MyAlloc(size); }
