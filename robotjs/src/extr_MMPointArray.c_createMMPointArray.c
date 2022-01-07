
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t _allocedCount; int * array; } ;
typedef TYPE_1__* MMPointArrayRef ;
typedef int MMPointArray ;
typedef int MMPoint ;


 TYPE_1__* calloc (int,int) ;
 int * malloc (int) ;

MMPointArrayRef createMMPointArray(size_t initialCount)
{
 MMPointArrayRef pointArray = calloc(1, sizeof(MMPointArray));

 if (initialCount == 0) initialCount = 1;

 pointArray->_allocedCount = initialCount;
 pointArray->array = malloc(pointArray->_allocedCount * sizeof(MMPoint));
 if (pointArray->array == ((void*)0)) return ((void*)0);

 return pointArray;
}
