
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int InitializeCriticalSection (int *) ;
 int __criticalSection ;

void _Locale_init()
{ InitializeCriticalSection(&__criticalSection); }
