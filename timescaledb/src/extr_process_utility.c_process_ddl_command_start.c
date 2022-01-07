
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_1__ ;


struct TYPE_20__ {int parsetree; } ;
typedef TYPE_1__ ProcessUtilityArgs ;
 int nodeTag (int ) ;
 int process_alterobjectschema (TYPE_1__*) ;
 int process_altertable_start (TYPE_1__*) ;
 int process_cluster_start (TYPE_1__*) ;
 int process_copy (TYPE_1__*) ;
 int process_create_rule_start (TYPE_1__*) ;
 int process_create_trigger_start (TYPE_1__*) ;
 int process_drop (TYPE_1__*) ;
 int process_drop_tablespace (TYPE_1__*) ;
 int process_grant_and_revoke (TYPE_1__*) ;
 int process_grant_and_revoke_role (TYPE_1__*) ;
 int process_index_start (TYPE_1__*) ;
 int process_refresh_mat_view_start (TYPE_1__*,int ) ;
 int process_reindex (TYPE_1__*) ;
 int process_rename (TYPE_1__*) ;
 int process_truncate (TYPE_1__*) ;
 int process_vacuum (TYPE_1__*) ;
 int process_viewstmt (TYPE_1__*) ;

__attribute__((used)) static bool
process_ddl_command_start(ProcessUtilityArgs *args)
{
 bool handled = 0;

 switch (nodeTag(args->parsetree))
 {
  case 144:
   process_alterobjectschema(args);
   break;
  case 130:
   handled = process_truncate(args);
   break;
  case 143:
   handled = process_altertable_start(args);
   break;
  case 132:
   process_rename(args);
   break;
  case 135:
   handled = process_index_start(args);
   break;
  case 140:
   handled = process_create_trigger_start(args);
   break;
  case 131:
   process_create_rule_start(args);
   break;
  case 139:







   process_drop(args);
   break;
  case 138:
   process_drop_tablespace(args);
   break;
  case 136:
   handled = process_grant_and_revoke(args);
   break;
  case 137:
   handled = process_grant_and_revoke_role(args);
   break;
  case 141:
   handled = process_copy(args);
   break;
  case 129:
   handled = process_vacuum(args);
   break;
  case 133:
   handled = process_reindex(args);
   break;
  case 142:
   handled = process_cluster_start(args);
   break;
  case 128:
   handled = process_viewstmt(args);
   break;
  case 134:
   handled = process_refresh_mat_view_start(args, args->parsetree);
   break;
  default:
   break;
 }

 return handled;
}
