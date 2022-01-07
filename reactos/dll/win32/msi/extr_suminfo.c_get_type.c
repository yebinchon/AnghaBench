
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
 int VT_EMPTY ;
 int VT_FILETIME ;
 int VT_I2 ;
 int VT_I4 ;
 int VT_LPSTR ;

__attribute__((used)) static UINT get_type( UINT uiProperty )
{
    switch( uiProperty )
    {



    case 143:

         return VT_I2;

    case 131:
    case 145:
    case 139:
    case 141:
    case 130:
    case 138:
    case 134:
    case 146:
    case 129:
         return VT_LPSTR;

    case 137:
    case 140:
    case 136:
         return VT_FILETIME;

    case 128:
    case 144:



    case 133:

    case 135:
         return VT_I4;
    }
    return VT_EMPTY;
}
