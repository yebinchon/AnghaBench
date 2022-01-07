
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BigFree (void*) ;

__attribute__((used)) static void SzBigFree(void *p, void *address) { p = p; BigFree(address); }
