
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ name; int attrs; } ;
typedef TYPE_1__ type_t ;
struct TYPE_13__ {scalar_t__ name; } ;


 int ATTR_PUBLIC ;
 unsigned short VT_CARRAY ;
 unsigned short VT_DISPATCH ;
 unsigned short VT_I1 ;
 unsigned short VT_I2 ;
 unsigned short VT_I4 ;
 unsigned short VT_I8 ;
 unsigned short VT_INT ;
 unsigned short VT_PTR ;
 unsigned short VT_R4 ;
 unsigned short VT_R8 ;
 unsigned short VT_SAFEARRAY ;
 unsigned short VT_UI1 ;
 unsigned short VT_UI2 ;
 unsigned short VT_UI4 ;
 unsigned short VT_UI8 ;
 unsigned short VT_UINT ;
 unsigned short VT_UNKNOWN ;
 unsigned short VT_USERDEFINED ;
 unsigned short VT_VOID ;
 int assert (int ) ;
 unsigned short builtin_vt (TYPE_1__*) ;
 int chat (char*,TYPE_1__*,scalar_t__) ;
 int error (char*) ;
 scalar_t__ is_attr (int ,int ) ;
 int match (scalar_t__,char*) ;
 int pointer_size ;
 TYPE_7__* type_array_get_element (TYPE_1__*) ;
 int type_array_is_decl_as_ptr (TYPE_1__*) ;
 int type_basic_get_sign (TYPE_1__*) ;
 int type_basic_get_type (TYPE_1__*) ;
 int type_get_type (TYPE_1__*) ;
 scalar_t__ type_is_alias (TYPE_1__*) ;

unsigned short get_type_vt(type_t *t)
{
  unsigned short vt;

  chat("get_type_vt: %p type->name %s\n", t, t->name);
  if (t->name) {
    vt = builtin_vt(t);
    if (vt) return vt;
  }

  if (type_is_alias(t) && is_attr(t->attrs, ATTR_PUBLIC))
    return VT_USERDEFINED;

  switch (type_get_type(t)) {
  case 154:
    switch (type_basic_get_type(t)) {
    case 153:
      return VT_UI1;
    case 152:
    case 141:
      if (type_basic_get_sign(t) > 0)
        return VT_UI1;
      else
        return VT_I1;
    case 139:
      return VT_I2;
    case 145:
      if (type_basic_get_sign(t) > 0)
        return VT_UI2;
      else
        return VT_I2;
    case 146:
      if (type_basic_get_sign(t) > 0)
        return VT_UINT;
      else
        return VT_INT;
    case 144:
    case 140:
    case 150:
      if (type_basic_get_sign(t) > 0)
        return VT_UI4;
      else
        return VT_I4;
    case 142:
    case 147:
      if (type_basic_get_sign(t) > 0)
        return VT_UI8;
      else
        return VT_I8;
    case 143:
      if (pointer_size == 8)
      {
        if (type_basic_get_sign(t) > 0)
          return VT_UI8;
        else
          return VT_I8;
      }
      else
      {
        if (type_basic_get_sign(t) > 0)
          return VT_UI4;
        else
          return VT_I4;
      }
    case 149:
      return VT_R4;
    case 151:
      return VT_R8;
    case 148:
      error("handles can't be used in typelibs\n");
    }
    break;

  case 131:
    return VT_PTR;

  case 155:
    if (type_array_is_decl_as_ptr(t))
    {
      if (match(type_array_get_element(t)->name, "SAFEARRAY"))
        return VT_SAFEARRAY;
      return VT_PTR;
    }
    else
      return VT_CARRAY;

  case 133:
    if(match(t->name, "IUnknown"))
      return VT_UNKNOWN;
    if(match(t->name, "IDispatch"))
      return VT_DISPATCH;
    return VT_USERDEFINED;

  case 135:
  case 130:
  case 137:
  case 132:
  case 129:
  case 136:
    return VT_USERDEFINED;

  case 128:
    return VT_VOID;

  case 156:

    assert(0);
    break;

  case 134:
    error("get_type_vt: functions not supported\n");
    break;

  case 138:
    error("get_type_vt: bitfields not supported\n");
    break;
  }
  return 0;
}
