
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {short* Data4; int Data3; int Data2; int Data1; } ;
typedef TYPE_1__ GUID ;
typedef int BOOL ;


 int FALSE ;
 int FIXME (char*,int ) ;
 int TRUE ;
 int debugstr_guid (TYPE_1__*) ;
 int memcpy (char*,char const*,int) ;
 int sscanf (char const*,char*,int *,int *,int *,short*) ;
 short strtol (char*,int *,int) ;

__attribute__((used)) static BOOL TLB_GUIDFromString(const char *str, GUID *guid)
{
  char b[3];
  int i;
  short s;

  if(sscanf(str, "%x-%hx-%hx-%hx", &guid->Data1, &guid->Data2, &guid->Data3, &s) != 4) {
    FIXME("Can't parse guid %s\n", debugstr_guid(guid));
    return FALSE;
  }

  guid->Data4[0] = s >> 8;
  guid->Data4[1] = s & 0xff;

  b[2] = '\0';
  for(i = 0; i < 6; i++) {
    memcpy(b, str + 24 + 2 * i, 2);
    guid->Data4[i + 2] = strtol(b, ((void*)0), 16);
  }
  return TRUE;
}
