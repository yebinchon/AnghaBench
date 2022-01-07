
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ Handle; } ;
typedef TYPE_1__* PXMS_HANDLE ;
typedef int BOOLEAN ;



__attribute__((used)) static inline BOOLEAN ValidateXmsHandle(PXMS_HANDLE HandleEntry)
{
    return (HandleEntry != ((void*)0) && HandleEntry->Handle != 0);
}
