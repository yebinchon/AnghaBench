
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_3__ {int floodLen; int floodStart; } ;
typedef TYPE_1__ FLOODINFO ;



__attribute__((used)) static __inline VOID removeItemFlood(FLOODINFO *info)
{
  info->floodStart++;
  info->floodLen--;
}
