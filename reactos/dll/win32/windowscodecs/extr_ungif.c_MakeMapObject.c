
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ColorCount; int BitsPerPixel; int * Colors; } ;
typedef int GifColorType ;
typedef TYPE_1__ ColorMapObject ;


 int BitSize (int) ;
 int memcpy (int *,int const*,int) ;
 TYPE_1__* ungif_alloc (int) ;
 int * ungif_calloc (int,int) ;
 int ungif_free (TYPE_1__*) ;

__attribute__((used)) static ColorMapObject *
MakeMapObject(int ColorCount,
              const GifColorType * ColorMap) {

    ColorMapObject *Object;



    if (ColorCount != (1 << BitSize(ColorCount))) {
        return ((void*)0);
    }

    Object = ungif_alloc(sizeof(ColorMapObject));
    if (Object == ((void*)0)) {
        return ((void*)0);
    }

    Object->Colors = ungif_calloc(ColorCount, sizeof(GifColorType));
    if (Object->Colors == ((void*)0)) {
        ungif_free(Object);
        return ((void*)0);
    }

    Object->ColorCount = ColorCount;
    Object->BitsPerPixel = BitSize(ColorCount);

    if (ColorMap) {
        memcpy(Object->Colors, ColorMap, ColorCount * sizeof(GifColorType));
    }

    return (Object);
}
