
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * hIcon; int * lpszFI; } ;
typedef char TCHAR ;
typedef TYPE_1__* PDOCBUCKET ;
typedef int INT ;
typedef int * HICON ;


 int ExtractIconEx (int *,int ,int *,int **,int) ;
 int atoi (char*) ;
 char* wcsrchr (int *,char) ;

HICON DocGetIcon(PDOCBUCKET pDocBucket)
{
   if (pDocBucket == ((void*)0))
  return ((void*)0);

   if (pDocBucket->hIcon == ((void*)0) && pDocBucket->lpszFI != ((void*)0))
   {
      TCHAR *pchT = wcsrchr(pDocBucket->lpszFI, ',');

      if (pchT != ((void*)0))
      {
         INT index = atoi(pchT+1);
         HICON hIcon;

    *pchT = '\0';
         if (ExtractIconEx(pDocBucket->lpszFI, index, ((void*)0), &hIcon, 1) == 1)
          pDocBucket->hIcon = hIcon;
      }
   }
   return pDocBucket->hIcon;
}
