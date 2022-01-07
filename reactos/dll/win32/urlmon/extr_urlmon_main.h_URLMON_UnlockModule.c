
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int InterlockedDecrement (int *) ;
 int URLMON_refCount ;

__attribute__((used)) static inline void URLMON_UnlockModule(void) { InterlockedDecrement( &URLMON_refCount ); }
