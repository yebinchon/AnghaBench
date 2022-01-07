
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int CP_ACP ;
 int MultiByteToWideChar (int ,int ,char const*,int,int *,int) ;
 int SetEnv (int *) ;
 int free (int *) ;
 int * malloc (int) ;

int _putenv(const char* val)
{
   int size, result;
   wchar_t *woption;

   size = MultiByteToWideChar(CP_ACP, 0, val, -1, ((void*)0), 0);
   woption = malloc(size* sizeof(wchar_t));
   if (woption == ((void*)0))
      return -1;
   MultiByteToWideChar(CP_ACP, 0, val, -1, woption, size);
   result = SetEnv(woption);
   free(woption);
   return result;
}
