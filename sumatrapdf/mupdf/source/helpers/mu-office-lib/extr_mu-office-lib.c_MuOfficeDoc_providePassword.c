
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int password_sem; int password; } ;
typedef TYPE_1__ MuOfficeDoc ;


 int MuError_OK ;
 int MuError_PasswordPending ;
 int Pal_Mem_malloc (size_t) ;
 int mu_trigger_semaphore (int *) ;
 int strcpy (int ,char const*) ;
 size_t strlen (char const*) ;

int MuOfficeDoc_providePassword(MuOfficeDoc *doc, const char *password)
{
 size_t len;

 if (doc->password)
  return MuError_PasswordPending;
 if (!password)
  password = "";

 len = strlen(password);
 doc->password = Pal_Mem_malloc(len+1);
 strcpy(doc->password, password);
 mu_trigger_semaphore(&doc->password_sem);

 return MuError_OK;
}
