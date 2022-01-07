
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;



__attribute__((used)) static int COND_IsNumber( WCHAR x )
{
    return( (( x >= '0' ) && ( x <= '9' )) || (x =='-') || (x =='.') );
}
