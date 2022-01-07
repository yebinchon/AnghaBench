
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* malloc (int) ;

__attribute__((used)) static void *tmLsmMalloc(int n){ return malloc(n); }
