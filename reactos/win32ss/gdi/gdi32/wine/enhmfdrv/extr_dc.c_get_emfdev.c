
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
typedef int * PHYSDEV ;


 TYPE_1__* CONTAINING_RECORD (int *,int ,int ) ;
 int EMFDRV_PDEVICE ;
 int pathdev ;

__attribute__((used)) static inline PHYSDEV get_emfdev( PHYSDEV path )
{
    return &CONTAINING_RECORD( path, EMFDRV_PDEVICE, pathdev )->dev;
}
