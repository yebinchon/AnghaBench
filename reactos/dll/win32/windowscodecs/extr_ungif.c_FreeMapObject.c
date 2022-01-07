
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* Colors; } ;
typedef TYPE_1__ ColorMapObject ;


 int ungif_free (TYPE_1__*) ;

__attribute__((used)) static void
FreeMapObject(ColorMapObject * Object) {

    if (Object != ((void*)0)) {
        ungif_free(Object->Colors);
        ungif_free(Object);






    }
}
