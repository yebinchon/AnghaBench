
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPSTR ;
typedef int * LPCSTR ;
typedef int INT ;


 int IS_SEPARATOR (int ) ;
 int strcpy (int ,int *) ;
 int strlen (int *) ;

__attribute__((used)) static void MSCMS_basenameA( LPCSTR path, LPSTR name )
{
    INT i = strlen( path );

    while (i > 0 && !IS_SEPARATOR(path[i - 1])) i--;
    strcpy( name, &path[i] );
}
