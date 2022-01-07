
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;


 int memmove (int *,int *,int) ;
 int * strchrW (int *,char) ;
 int strlenW (int *) ;

void msi_reduce_to_long_filename( WCHAR *filename )
{
    WCHAR *p = strchrW( filename, '|' );
    if (p) memmove( filename, p + 1, (strlenW( p + 1 ) + 1) * sizeof(WCHAR) );
}
