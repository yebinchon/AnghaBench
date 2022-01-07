
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PCWSTR ;
typedef int HINF ;
typedef int BOOL ;


 int FIXME (char*,int ) ;
 int TRUE ;
 int debugstr_w (int ) ;

__attribute__((used)) static BOOL update_ini_fields_callback( HINF hinf, PCWSTR field, void *arg )
{
    FIXME( "should update ini fields %s\n", debugstr_w(field) );
    return TRUE;
}
