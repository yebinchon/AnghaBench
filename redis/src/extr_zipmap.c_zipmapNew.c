
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char ZIPMAP_END ;
 unsigned char* zmalloc (int) ;

unsigned char *zipmapNew(void) {
    unsigned char *zm = zmalloc(2);

    zm[0] = 0;
    zm[1] = ZIPMAP_END;
    return zm;
}
