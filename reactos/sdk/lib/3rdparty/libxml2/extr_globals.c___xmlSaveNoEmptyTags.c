
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int xmlSaveNoEmptyTags; } ;


 scalar_t__ IS_MAIN_THREAD ;
 TYPE_1__* xmlGetGlobalState () ;
 int xmlSaveNoEmptyTags ;

int *
__xmlSaveNoEmptyTags(void) {
    if (IS_MAIN_THREAD)
 return (&xmlSaveNoEmptyTags);
    else
 return (&xmlGetGlobalState()->xmlSaveNoEmptyTags);
}
