
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int endswith (char*,char*) ;
 int unlink_noerrno (char*) ;

void unlink_tempfilep(char (*p)[]) {




        if (!endswith(*p, ".XXXXXX"))
                (void) unlink_noerrno(*p);
}
