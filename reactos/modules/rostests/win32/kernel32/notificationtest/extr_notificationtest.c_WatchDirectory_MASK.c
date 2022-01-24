#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ TCHAR ;
typedef  scalar_t__* LPTSTR ;
typedef  int /*<<< orphan*/ * HANDLE ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FILE_NOTIFY_CHANGE_DIR_NAME ; 
 int /*<<< orphan*/  FILE_NOTIFY_CHANGE_FILE_NAME ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/ * INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*) ; 
 scalar_t__ TRUE ; 
#define  WAIT_OBJECT_0 129 
#define  WAIT_TIMEOUT 128 
 int FUNC6 (int,int /*<<< orphan*/ **,scalar_t__,int /*<<< orphan*/ ) ; 
 int _MAX_EXT ; 
 int _MAX_FNAME ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,scalar_t__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*,int,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

void FUNC9(LPTSTR lpDir)
{
   DWORD dwWaitStatus; 
   HANDLE dwChangeHandles[2]; 
   TCHAR lpDrive[4];
   TCHAR lpFile[_MAX_FNAME];
   TCHAR lpExt[_MAX_EXT];

   FUNC7(lpDir, lpDrive, 4, NULL, 0, lpFile, _MAX_FNAME, lpExt, _MAX_EXT);

   lpDrive[2] = (TCHAR)'\\';
   lpDrive[3] = (TCHAR)'\0';
 
// Watch the directory for file creation and deletion. 
 
   dwChangeHandles[0] = FUNC1( 
      lpDir,                         // directory to watch 
      FALSE,                         // do not watch subtree 
      FILE_NOTIFY_CHANGE_FILE_NAME); // watch file name changes 
 
   if (dwChangeHandles[0] == INVALID_HANDLE_VALUE) 
   {
     FUNC8("\n ERROR: FindFirstChangeNotification function failed.\n");
     FUNC0(FUNC3()); 
   }
 
// Watch the subtree for directory creation and deletion. 
 
   dwChangeHandles[1] = FUNC1( 
      lpDrive,                       // directory to watch 
      TRUE,                          // watch the subtree 
      FILE_NOTIFY_CHANGE_DIR_NAME);  // watch dir name changes 
 
   if (dwChangeHandles[1] == INVALID_HANDLE_VALUE) 
   {
     FUNC8("\n ERROR: FindFirstChangeNotification function failed.\n");
     FUNC0(FUNC3()); 
   }
 

// Make a final validation check on our handles.

   if ((dwChangeHandles[0] == NULL) || (dwChangeHandles[1] == NULL))
   {
     FUNC8("\n ERROR: Unexpected NULL from FindFirstChangeNotification.\n");
     FUNC0(FUNC3()); 
   }

// Change notification is set. Now wait on both notification 
// handles and refresh accordingly. 
 
   while (TRUE) 
   { 
   // Wait for notification.
 
      FUNC8("\nWaiting for notification...\n");

      dwWaitStatus = FUNC6(2, dwChangeHandles, 
         FALSE, INFINITE); 
 
      switch (dwWaitStatus) 
      { 
         case WAIT_OBJECT_0: 
 
         // A file was created, renamed, or deleted in the directory.
         // Refresh this directory and restart the notification.
 
             FUNC4(lpDir); 
             if ( FUNC2(dwChangeHandles[0]) == FALSE )
             {
               FUNC8("\n ERROR: FindNextChangeNotification function failed.\n");
               FUNC0(FUNC3()); 
             }
             break; 
 
         case WAIT_OBJECT_0 + 1: 
 
         // A directory was created, renamed, or deleted.
         // Refresh the tree and restart the notification.
 
             FUNC5(lpDrive); 
             if (FUNC2(dwChangeHandles[1]) == FALSE )
             {
               FUNC8("\n ERROR: FindNextChangeNotification function failed.\n");
               FUNC0(FUNC3()); 
             }
             break; 
 
         case WAIT_TIMEOUT:

         // A timeout occurred, this would happen if some value other 
         // than INFINITE is used in the Wait call and no changes occur.
         // In a single-threaded environment you might not want an
         // INFINITE wait.
 
            FUNC8("\nNo changes in the timeout period.\n");
            break;

         default: 
            FUNC8("\n ERROR: Unhandled dwWaitStatus.\n");
            FUNC0(FUNC3());
            break;
      }
   }
}