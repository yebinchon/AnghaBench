
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_15__ {int root; } ;
struct TYPE_12__ {void* numeric; } ;
struct TYPE_14__ {TYPE_1__ val; void* type; } ;
struct TYPE_13__ {scalar_t__ len; char* data; } ;
typedef TYPE_2__* StringInfo ;
typedef TYPE_3__ JsonbValue ;
typedef int JsonbParseState ;
typedef TYPE_4__ Jsonb ;


 int Assert (int) ;
 scalar_t__ BGW_EXTRALEN ;
 void* DatumGetNumeric (int ) ;
 int DirectFunctionCall1 (int ,int ) ;
 scalar_t__ GetUserId () ;
 int Int32GetDatum (int ) ;
 int JsonbToCString (TYPE_2__*,int *,int ) ;
 TYPE_4__* JsonbValueToJsonb (TYPE_3__*) ;
 int VARSIZE (TYPE_4__*) ;
 int WJB_BEGIN_ARRAY ;
 int WJB_ELEM ;
 int WJB_END_ARRAY ;
 int int4_numeric ;
 void* jbvNumeric ;
 TYPE_2__* makeStringInfo () ;
 TYPE_3__* pushJsonbValue (int **,int ,TYPE_3__*) ;

__attribute__((used)) static char *
serialize_test_parameters(int32 ttl)
{
 JsonbValue *result;
 JsonbValue ttl_value;
 JsonbParseState *parseState = ((void*)0);
 Jsonb *jb;
 StringInfo jtext = makeStringInfo();
 JsonbValue user_oid;

 user_oid.type = jbvNumeric;
 user_oid.val.numeric =
  DatumGetNumeric(DirectFunctionCall1(int4_numeric, Int32GetDatum((int32) GetUserId())));

 ttl_value.type = jbvNumeric;
 ttl_value.val.numeric = DatumGetNumeric(DirectFunctionCall1(int4_numeric, Int32GetDatum(ttl)));

 result = pushJsonbValue(&parseState, WJB_BEGIN_ARRAY, ((void*)0));

 result = pushJsonbValue(&parseState, WJB_ELEM, &ttl_value);
 result = pushJsonbValue(&parseState, WJB_ELEM, &user_oid);

 result = pushJsonbValue(&parseState, WJB_END_ARRAY, ((void*)0));

 jb = JsonbValueToJsonb(result);
 (void) JsonbToCString(jtext, &jb->root, VARSIZE(jb));
 Assert(jtext->len < BGW_EXTRALEN);

 return jtext->data;
}
