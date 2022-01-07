
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t USHORT ;
typedef int * PEMS_HANDLE ;


 size_t ARRAYSIZE (int *) ;
 int * EmsHandleTable ;

__attribute__((used)) static inline PEMS_HANDLE GetEmsHandleRecord(USHORT Handle)
{
    if (Handle >= ARRAYSIZE(EmsHandleTable)) return ((void*)0);
    return &EmsHandleTable[Handle];
}
