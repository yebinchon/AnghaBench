
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void** Data4; void* Data3; void* Data2; void* Data1; } ;
typedef TYPE_1__ UUID ;


 int memcpy (char*,char const*,int) ;
 void* strtoul (char const*,int *,int) ;
 TYPE_1__* xmalloc (int) ;

UUID *parse_uuid(const char *u)
{
  UUID* uuid = xmalloc(sizeof(UUID));
  char b[3];

  uuid->Data1 = strtoul(u, ((void*)0), 16);
  uuid->Data2 = strtoul(u+9, ((void*)0), 16);
  uuid->Data3 = strtoul(u+14, ((void*)0), 16);
  b[2] = 0;
  memcpy(b, u+19, 2); uuid->Data4[0] = strtoul(b, ((void*)0), 16);
  memcpy(b, u+21, 2); uuid->Data4[1] = strtoul(b, ((void*)0), 16);
  memcpy(b, u+24, 2); uuid->Data4[2] = strtoul(b, ((void*)0), 16);
  memcpy(b, u+26, 2); uuid->Data4[3] = strtoul(b, ((void*)0), 16);
  memcpy(b, u+28, 2); uuid->Data4[4] = strtoul(b, ((void*)0), 16);
  memcpy(b, u+30, 2); uuid->Data4[5] = strtoul(b, ((void*)0), 16);
  memcpy(b, u+32, 2); uuid->Data4[6] = strtoul(b, ((void*)0), 16);
  memcpy(b, u+34, 2); uuid->Data4[7] = strtoul(b, ((void*)0), 16);
  return uuid;
}
