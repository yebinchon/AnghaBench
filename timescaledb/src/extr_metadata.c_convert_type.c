
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGFunction ;
typedef int Oid ;
typedef int Datum ;


 int DirectFunctionCall1 (int ,int ) ;
 int OidFunctionCall1 (int ,int ) ;
 int OidIsValid (int ) ;
 int TYPE_ERROR (char*,int ) ;
 int getTypeOutputInfo (int ,int *,int*) ;

__attribute__((used)) static Datum
convert_type(PGFunction func, Datum value, Oid from_type)
{
 bool value_is_varlena;
 Oid value_out;

 getTypeOutputInfo(from_type, &value_out, &value_is_varlena);

 if (!OidIsValid(value_out))
  TYPE_ERROR("output", from_type);

 return DirectFunctionCall1(func, OidFunctionCall1(value_out, value));
}
