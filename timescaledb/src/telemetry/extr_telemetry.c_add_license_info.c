
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* add_tsl_license_info_telemetry ) (int *) ;} ;
typedef int JsonbParseState ;


 int REQ_LICENSE_EDITION ;
 int REQ_LICENSE_EDITION_APACHE ;
 scalar_t__ TS_CURRENT_LICENSE_IS_APACHE_ONLY () ;
 int WJB_BEGIN_OBJECT ;
 int WJB_END_OBJECT ;
 int pushJsonbValue (int **,int ,int *) ;
 int stub1 (int *) ;
 TYPE_1__* ts_cm_functions ;
 int ts_jsonb_add_str (int *,int ,int ) ;

__attribute__((used)) static void
add_license_info(JsonbParseState *state)
{
 pushJsonbValue(&state, WJB_BEGIN_OBJECT, ((void*)0));

 if (TS_CURRENT_LICENSE_IS_APACHE_ONLY())
  ts_jsonb_add_str(state, REQ_LICENSE_EDITION, REQ_LICENSE_EDITION_APACHE);
 else
  ts_cm_functions->add_tsl_license_info_telemetry(state);

 pushJsonbValue(&state, WJB_END_OBJECT, ((void*)0));
}
