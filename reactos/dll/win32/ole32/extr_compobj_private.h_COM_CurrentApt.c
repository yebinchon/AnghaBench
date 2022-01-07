
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * apt; } ;
typedef int APARTMENT ;


 TYPE_1__* COM_CurrentInfo () ;

__attribute__((used)) static inline APARTMENT* COM_CurrentApt(void)
{
    return COM_CurrentInfo()->apt;
}
