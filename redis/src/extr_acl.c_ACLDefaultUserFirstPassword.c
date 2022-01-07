
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * sds ;
typedef int listNode ;
struct TYPE_2__ {int passwords; } ;


 TYPE_1__* DefaultUser ;
 int * listFirst (int ) ;
 scalar_t__ listLength (int ) ;
 int * listNodeValue (int *) ;

sds ACLDefaultUserFirstPassword(void) {
    if (listLength(DefaultUser->passwords) == 0) return ((void*)0);
    listNode *first = listFirst(DefaultUser->passwords);
    return listNodeValue(first);
}
