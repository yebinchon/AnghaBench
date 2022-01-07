
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DeleteCriticalSection (int *) ;
 int __criticalSection ;

void _Locale_final()
{ DeleteCriticalSection(&__criticalSection); }
