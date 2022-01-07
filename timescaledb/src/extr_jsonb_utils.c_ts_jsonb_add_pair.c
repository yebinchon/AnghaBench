
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JsonbValue ;
typedef int JsonbParseState ;


 int Assert (int ) ;
 int WJB_KEY ;
 int WJB_VALUE ;
 int pushJsonbValue (int **,int ,int *) ;

__attribute__((used)) static void
ts_jsonb_add_pair(JsonbParseState *state, JsonbValue *key, JsonbValue *value)
{
 Assert(state != ((void*)0));
 Assert(key != ((void*)0));
 if (value == ((void*)0))
  return;

 pushJsonbValue(&state, WJB_KEY, key);
 pushJsonbValue(&state, WJB_VALUE, value);
}
