
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int type_t ;


 int FALSE ;
 int TDT_ALL_TYPES ;





 int TRUE ;
 int typegen_detect_type (int const*,int *,int ) ;

__attribute__((used)) static int is_embedded_complex(const type_t *type)
{
    switch (typegen_detect_type(type, ((void*)0), TDT_ALL_TYPES))
    {
    case 128:
    case 130:
    case 129:
    case 132:
    case 131:
        return TRUE;
    default:
        return FALSE;
    }
}
