
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BatTranslate (int,int,int) ;

inline int BatHit( int batu, int batl, int virt ) {
    return BatTranslate( batu, batl, virt ) != -1;
}
