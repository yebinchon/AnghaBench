
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* private_data; } ;
typedef int SRC_STATE ;
typedef TYPE_1__ SRC_PRIVATE ;


 int free (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;

SRC_STATE *
src_delete (SRC_STATE *state)
{ SRC_PRIVATE *psrc ;

 psrc = (SRC_PRIVATE*) state ;
 if (psrc)
 { if (psrc->private_data)
   free (psrc->private_data) ;
  memset (psrc, 0, sizeof (SRC_PRIVATE)) ;
  free (psrc) ;
  } ;

 return ((void*)0) ;
}
