
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int cs ;
struct TYPE_4__ {int fFullPathTitle; } ;
typedef TYPE_1__ CABINETSTATE ;
typedef int BOOL ;


 int ReadCabinetState (TYPE_1__*,int) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static BOOL full_title(void)
{
    CABINETSTATE cs;

    memset(&cs, 0, sizeof(cs));
    ReadCabinetState(&cs, sizeof(cs));

    return (cs.fFullPathTitle == -1);
}
