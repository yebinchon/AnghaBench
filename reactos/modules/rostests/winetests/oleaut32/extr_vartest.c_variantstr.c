
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int VARIANT ;
typedef int UINT ;
struct TYPE_2__ {int Hi; int Lo; } ;


 size_t ARRAY_SIZE (char const**) ;
 TYPE_1__ S (int ) ;
 int V_CY (int const*) ;
 double V_DATE (int const*) ;
 int V_I1 (int const*) ;
 int V_I2 (int const*) ;
 int V_I4 (int const*) ;
 int V_I8 (int const*) ;
 int V_INT (int const*) ;
 double V_R4 (int const*) ;
 double V_R8 (int const*) ;
 int V_UI1 (int const*) ;
 int V_UI2 (int const*) ;
 int V_UI4 (int const*) ;
 int V_UI8 (int const*) ;
 int V_UINT (int const*) ;
 int V_VT (int const*) ;
 int sprintf (char const*,char*,double,...) ;
 char const* vtstr (int) ;
 char const** vtstr_buffer ;
 size_t vtstr_current ;

__attribute__((used)) static const char *variantstr( const VARIANT *var )
{
    vtstr_current %= ARRAY_SIZE(vtstr_buffer);
    switch(V_VT(var))
    {
    case 139:
        sprintf( vtstr_buffer[vtstr_current], "VT_I1(%d)", V_I1(var) ); break;
    case 138:
        sprintf( vtstr_buffer[vtstr_current], "VT_I2(%d)", V_I2(var) ); break;
    case 137:
        sprintf( vtstr_buffer[vtstr_current], "VT_I4(%d)", V_I4(var) ); break;
    case 135:
        sprintf( vtstr_buffer[vtstr_current], "VT_INT(%d)", V_INT(var) ); break;
    case 136:
        sprintf( vtstr_buffer[vtstr_current], "VT_I8(%x%08x)", (UINT)(V_I8(var) >> 32), (UINT)V_I8(var) ); break;
    case 129:
        sprintf( vtstr_buffer[vtstr_current], "VT_UI8(%x%08x)", (UINT)(V_UI8(var) >> 32), (UINT)V_UI8(var) ); break;
    case 134:
        sprintf( vtstr_buffer[vtstr_current], "VT_R4(%g)", V_R4(var) ); break;
    case 133:
        sprintf( vtstr_buffer[vtstr_current], "VT_R8(%g)", V_R8(var) ); break;
    case 132:
        sprintf( vtstr_buffer[vtstr_current], "VT_UI1(%u)", V_UI1(var) ); break;
    case 131:
        sprintf( vtstr_buffer[vtstr_current], "VT_UI2(%u)", V_UI2(var) ); break;
    case 130:
        sprintf( vtstr_buffer[vtstr_current], "VT_UI4(%u)", V_UI4(var) ); break;
    case 128:
        sprintf( vtstr_buffer[vtstr_current], "VT_UINT(%d)", V_UINT(var) ); break;
    case 141:
        sprintf( vtstr_buffer[vtstr_current], "VT_CY(%x%08x)", S(V_CY(var)).Hi, S(V_CY(var)).Lo ); break;
    case 140:
        sprintf( vtstr_buffer[vtstr_current], "VT_DATE(%g)", V_DATE(var) ); break;
    default:
        return vtstr(V_VT(var));
    }
    return vtstr_buffer[vtstr_current++];
}
