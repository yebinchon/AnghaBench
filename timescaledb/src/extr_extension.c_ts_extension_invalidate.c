
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int ERROR ;




 int OidIsValid (int ) ;
 int elog (int ,char*,int) ;
 int extension_proxy_oid ;
 int extension_update_state () ;
 int extstate ;

bool
ts_extension_invalidate(Oid relid)
{
 static bool in_recursion = 0;
 bool invalidate_all = 0;





 if (in_recursion)
  return 0;

 in_recursion = 1;

 switch (extstate)
 {
  case 130:

  case 128:

  case 129:

   extension_update_state();
   break;
  case 131:






   if (extension_proxy_oid == relid || !OidIsValid(relid))
   {
    extension_update_state();
    if (131 != extstate)
    {




     invalidate_all = 1;
    }
   }
   break;
  default:
   elog(ERROR, "unknown state: %d", extstate);
   break;
 }
 in_recursion = 0;
 return invalidate_all;
}
