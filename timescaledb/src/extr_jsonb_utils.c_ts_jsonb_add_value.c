
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char* val; int len; } ;
struct TYPE_8__ {TYPE_1__ string; } ;
struct TYPE_9__ {TYPE_2__ val; int type; } ;
typedef TYPE_3__ JsonbValue ;
typedef int JsonbParseState ;


 int Assert (int ) ;
 int jbvString ;
 int strlen (char const*) ;
 int ts_jsonb_add_pair (int *,TYPE_3__*,TYPE_3__*) ;

void
ts_jsonb_add_value(JsonbParseState *state, const char *key, JsonbValue *value)
{
 JsonbValue json_key;

 Assert(key != ((void*)0));
 if (value == ((void*)0))
  return;

 json_key.type = jbvString;
 json_key.val.string.val = (char *) key;
 json_key.val.string.len = strlen(key);

 ts_jsonb_add_pair(state, &json_key, value);
}
