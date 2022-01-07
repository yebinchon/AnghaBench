
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int Datum ;


 int CStringGetDatum (int ) ;
 int Int32GetDatum (int) ;
 int InvalidOid ;
 int ObjectIdGetDatum (int ) ;
 int OidFunctionCall3 (int ,int ,int ,int ) ;
 int OidIsValid (int ) ;
 int TYPE_ERROR (char*,int ) ;
 int TextDatumGetCString (int ) ;
 int getTypeInputInfo (int ,int *,int *) ;

__attribute__((used)) static Datum
convert_text_to_type(Datum value, Oid to_type)
{
 Oid value_in;
 Oid value_ioparam;

 getTypeInputInfo(to_type, &value_in, &value_ioparam);

 if (!OidIsValid(value_in))
  TYPE_ERROR("input", to_type);

 value = OidFunctionCall3(value_in,
        CStringGetDatum(TextDatumGetCString(value)),
        ObjectIdGetDatum(InvalidOid),
        Int32GetDatum(-1));
 return value;
}
