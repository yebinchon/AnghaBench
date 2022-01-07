
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;


 scalar_t__ COND_IsAlpha (char) ;
 scalar_t__ COND_IsNumber (char) ;

__attribute__((used)) static int COND_IsIdent( WCHAR x )
{
    return( COND_IsAlpha( x ) || COND_IsNumber( x ) || ( x == '_' )
            || ( x == '#' ) || (x == '.') );
}
