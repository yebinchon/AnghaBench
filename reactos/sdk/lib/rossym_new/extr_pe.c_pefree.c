
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int nsections; struct TYPE_5__* sect; } ;
typedef TYPE_1__ Pe ;


 int ANSI_NAME_STRING (TYPE_1__*) ;
 int RtlFreeAnsiString (int ) ;
 int free (TYPE_1__*) ;

void pefree(Pe *pe) {
 int i;
 for (i = 0; i < pe->nsections; i++) {
  RtlFreeAnsiString(ANSI_NAME_STRING(&pe->sect[i]));
 }
 free(pe->sect);
 free(pe);
}
