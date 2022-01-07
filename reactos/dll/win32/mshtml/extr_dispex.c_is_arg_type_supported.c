
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VARTYPE ;
typedef int BOOL ;


 int BUILTIN_ARG_TYPES_SWITCH ;
 int FALSE ;

__attribute__((used)) static BOOL is_arg_type_supported(VARTYPE vt)
{
    switch(vt) {

    BUILTIN_ARG_TYPES_SWITCH;

    }
    return FALSE;
}
