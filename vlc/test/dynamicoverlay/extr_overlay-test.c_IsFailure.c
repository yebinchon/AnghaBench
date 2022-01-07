
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strncmp (char*,char*,int) ;

int IsFailure( char *psz_text ) {
    return strncmp( psz_text, "SUCCESS:", 8 );
}
