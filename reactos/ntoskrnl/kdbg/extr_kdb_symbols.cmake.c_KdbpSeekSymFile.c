
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int ULONG_PTR ;
struct TYPE_3__ {int QuadPart; } ;
struct TYPE_4__ {TYPE_1__ FileOffset; } ;
typedef int PVOID ;
typedef TYPE_2__* PROSSYM_KM_OWN_CONTEXT ;
typedef int BOOLEAN ;


 int TRUE ;

__attribute__((used)) static BOOLEAN
KdbpSeekSymFile(PVOID FileContext, ULONG_PTR Target)
{
    PROSSYM_KM_OWN_CONTEXT Context = (PROSSYM_KM_OWN_CONTEXT)FileContext;
    Context->FileOffset.QuadPart = Target;
    return TRUE;
}
