
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ TCHAR ;
typedef scalar_t__* LPTSTR ;
typedef int * HANDLE ;
typedef int DWORD ;


 int ExitProcess (int ) ;
 scalar_t__ FALSE ;
 int FILE_NOTIFY_CHANGE_DIR_NAME ;
 int FILE_NOTIFY_CHANGE_FILE_NAME ;
 int * FindFirstChangeNotification (scalar_t__*,scalar_t__,int ) ;
 scalar_t__ FindNextChangeNotification (int *) ;
 int GetLastError () ;
 int INFINITE ;
 int * INVALID_HANDLE_VALUE ;
 int RefreshDirectory (scalar_t__*) ;
 int RefreshTree (scalar_t__*) ;
 scalar_t__ TRUE ;


 int WaitForMultipleObjects (int,int **,scalar_t__,int ) ;
 int _MAX_EXT ;
 int _MAX_FNAME ;
 int _tsplitpath_s (scalar_t__*,scalar_t__*,int,int *,int ,scalar_t__*,int,scalar_t__*,int) ;
 int printf (char*) ;

void WatchDirectory(LPTSTR lpDir)
{
   DWORD dwWaitStatus;
   HANDLE dwChangeHandles[2];
   TCHAR lpDrive[4];
   TCHAR lpFile[_MAX_FNAME];
   TCHAR lpExt[_MAX_EXT];

   _tsplitpath_s(lpDir, lpDrive, 4, ((void*)0), 0, lpFile, _MAX_FNAME, lpExt, _MAX_EXT);

   lpDrive[2] = (TCHAR)'\\';
   lpDrive[3] = (TCHAR)'\0';



   dwChangeHandles[0] = FindFirstChangeNotification(
      lpDir,
      FALSE,
      FILE_NOTIFY_CHANGE_FILE_NAME);

   if (dwChangeHandles[0] == INVALID_HANDLE_VALUE)
   {
     printf("\n ERROR: FindFirstChangeNotification function failed.\n");
     ExitProcess(GetLastError());
   }



   dwChangeHandles[1] = FindFirstChangeNotification(
      lpDrive,
      TRUE,
      FILE_NOTIFY_CHANGE_DIR_NAME);

   if (dwChangeHandles[1] == INVALID_HANDLE_VALUE)
   {
     printf("\n ERROR: FindFirstChangeNotification function failed.\n");
     ExitProcess(GetLastError());
   }




   if ((dwChangeHandles[0] == ((void*)0)) || (dwChangeHandles[1] == ((void*)0)))
   {
     printf("\n ERROR: Unexpected NULL from FindFirstChangeNotification.\n");
     ExitProcess(GetLastError());
   }




   while (TRUE)
   {


      printf("\nWaiting for notification...\n");

      dwWaitStatus = WaitForMultipleObjects(2, dwChangeHandles,
         FALSE, INFINITE);

      switch (dwWaitStatus)
      {
         case 129:




             RefreshDirectory(lpDir);
             if ( FindNextChangeNotification(dwChangeHandles[0]) == FALSE )
             {
               printf("\n ERROR: FindNextChangeNotification function failed.\n");
               ExitProcess(GetLastError());
             }
             break;

         case 129 + 1:




             RefreshTree(lpDrive);
             if (FindNextChangeNotification(dwChangeHandles[1]) == FALSE )
             {
               printf("\n ERROR: FindNextChangeNotification function failed.\n");
               ExitProcess(GetLastError());
             }
             break;

         case 128:






            printf("\nNo changes in the timeout period.\n");
            break;

         default:
            printf("\n ERROR: Unhandled dwWaitStatus.\n");
            ExitProcess(GetLastError());
            break;
      }
   }
}
