
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum status_code { ____Placeholder_status_code } status_code ;


 int SUCCESS ;
 int reload_refs (int) ;

enum status_code
load_refs(bool force)
{
 static bool loaded = 0;

 if (!force && loaded)
  return SUCCESS;

 loaded = 1;
 return reload_refs(force);
}
