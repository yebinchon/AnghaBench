
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* data; } ;
typedef TYPE_1__* StringInfo ;


 int Assert (int) ;
 char* GetConfigOptionByName (char*,int *,int) ;
 int appendStringInfo (TYPE_1__*,char*,int,int,...) ;
 TYPE_1__* makeStringInfo () ;
 long strtol (char*,int *,int) ;

__attribute__((used)) static char *
get_pgversion_string()
{
 StringInfo buf = makeStringInfo();
 int major, minor, patch;







 char *server_version_num_guc = GetConfigOptionByName("server_version_num", ((void*)0), 0);
 long server_version_num = strtol(server_version_num_guc, ((void*)0), 10);

 major = server_version_num / 10000;
 minor = (server_version_num / 100) % 100;
 patch = server_version_num % 100;

 if (server_version_num < 100000)
 {
  Assert(major == 9 && minor == 6);
  appendStringInfo(buf, "%d.%d.%d", major, minor, patch);
 }
 else
 {
  Assert(major >= 10 && minor == 0);
  appendStringInfo(buf, "%d.%d", major, patch);
 }

 return buf->data;
}
