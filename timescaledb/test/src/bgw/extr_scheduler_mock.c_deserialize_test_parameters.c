
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ int32 ;
struct TYPE_7__ {int root; } ;
struct TYPE_5__ {int numeric; } ;
struct TYPE_6__ {scalar_t__ type; TYPE_1__ val; } ;
typedef scalar_t__ Oid ;
typedef int Numeric ;
typedef TYPE_2__ JsonbValue ;
typedef TYPE_3__ Jsonb ;


 int Assert (int) ;
 int CStringGetDatum (char*) ;
 scalar_t__ DatumGetInt32 (int ) ;
 scalar_t__ DatumGetPointer (int ) ;
 int DirectFunctionCall1 (int ,int ) ;
 int NumericGetDatum (int ) ;
 TYPE_2__* getIthJsonbValueFromContainer (int *,int) ;
 scalar_t__ jbvNumeric ;
 int jsonb_in ;
 int numeric_int4 ;

__attribute__((used)) static void
deserialize_test_parameters(char *params, int32 *ttl, Oid *user_oid)
{
 Jsonb *jb = (Jsonb *) DatumGetPointer(DirectFunctionCall1(jsonb_in, CStringGetDatum(params)));
 JsonbValue *ttl_v = getIthJsonbValueFromContainer(&jb->root, 0);
 JsonbValue *user_v = getIthJsonbValueFromContainer(&jb->root, 1);
 Numeric ttl_numeric;
 Numeric user_numeric;

 Assert(ttl_v->type == jbvNumeric);
 Assert(user_v->type == jbvNumeric);

 ttl_numeric = ttl_v->val.numeric;
 user_numeric = user_v->val.numeric;
 *ttl = DatumGetInt32(DirectFunctionCall1(numeric_int4, NumericGetDatum(ttl_numeric)));
 *user_oid =
  (Oid) DatumGetInt32(DirectFunctionCall1(numeric_int4, NumericGetDatum(user_numeric)));
}
