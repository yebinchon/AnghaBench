
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
typedef size_t UINT ;
struct TYPE_3__ {scalar_t__ Events; scalar_t__ Status; } ;
typedef TYPE_1__* PAFD_HANDLE ;



VOID ZeroEvents( PAFD_HANDLE HandleArray,
                 UINT HandleCount ) {
    UINT i;

    for( i = 0; i < HandleCount; i++ ) {
        HandleArray[i].Status = 0;
        HandleArray[i].Events = 0;
    }
}
