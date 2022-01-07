
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_3__ {int refs; } ;
typedef TYPE_1__ Context ;


 int InterlockedIncrement (int *) ;

__attribute__((used)) static ULONG Context_AddRef(Context *This)
{
    return InterlockedIncrement(&This->refs);
}
