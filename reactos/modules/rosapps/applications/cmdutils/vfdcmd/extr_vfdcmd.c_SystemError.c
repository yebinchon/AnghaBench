
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int msg ;
typedef int DWORD ;


 int FORMAT_MESSAGE_FROM_SYSTEM ;
 int FORMAT_MESSAGE_IGNORE_INSERTS ;
 int FormatMessage (int,int *,int ,int ,char*,int,int *) ;
 int sprintf (char*,char*,int ,int ) ;

const char *SystemError(DWORD err)
{
 static char msg[256];

 if (!FormatMessage(
  FORMAT_MESSAGE_FROM_SYSTEM |
  FORMAT_MESSAGE_IGNORE_INSERTS,
  ((void*)0), err, 0, msg, sizeof(msg), ((void*)0))) {

  sprintf(msg, "Unknown system error %lu (0x%08x)\n", err, err);



 }

 return msg;
}
