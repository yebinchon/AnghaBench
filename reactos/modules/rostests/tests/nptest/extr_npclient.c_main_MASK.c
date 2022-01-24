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
typedef  char* LPVOID ;
typedef  char* LPTSTR ;
typedef  scalar_t__ HANDLE ;
typedef  scalar_t__ DWORD ;
typedef  char CHAR ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ ERROR_MORE_DATA ; 
 scalar_t__ ERROR_PIPE_BUSY ; 
 int GENERIC_READ ; 
 int GENERIC_WRITE ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 scalar_t__ PIPE_READMODE_MESSAGE ; 
 scalar_t__ FUNC5 (scalar_t__,char*,int,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  STD_OUTPUT_HANDLE ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 scalar_t__ FUNC8 (scalar_t__,char*,scalar_t__,scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (char*) ; 

int FUNC10(int argc, char *argv[])
{
   HANDLE hPipe;
   LPVOID lpvMessage;
   CHAR chBuf[512];
   BOOL fSuccess;
   DWORD cbRead, cbWritten, dwMode;
   LPTSTR lpszPipename = "\\\\.\\pipe\\mynamedpipe";

// Try to open a named pipe; wait for it, if necessary.

   while (1)
   {
      hPipe = FUNC1(
         lpszPipename,   // pipe name
         GENERIC_READ |  // read and write access
         GENERIC_WRITE,
         0,              // no sharing
         NULL,           // no security attributes
         OPEN_EXISTING,  // opens existing pipe
         0,              // default attributes
         NULL);          // no template file

   // Break if the pipe handle is valid.

      if (hPipe != INVALID_HANDLE_VALUE)
         break;

      // Exit if an error other than ERROR_PIPE_BUSY occurs.

      if (FUNC2() != ERROR_PIPE_BUSY)
         FUNC4("Could not open pipe");

      // All pipe instances are busy, so wait for 20 seconds.

      if (! FUNC7(lpszPipename, 20000) )
         FUNC4("Could not open pipe");
   }

// The pipe connected; change to message-read mode.

   dwMode = PIPE_READMODE_MESSAGE;
   fSuccess = FUNC6(
      hPipe,    // pipe handle
      &dwMode,  // new pipe mode
      NULL,     // don't set maximum bytes
      NULL);    // don't set maximum time
   if (!fSuccess)
      FUNC4("SetNamedPipeHandleState");

// Send a message to the pipe server.

   lpvMessage = (argc > 1) ? argv[1] : "default message";

   fSuccess = FUNC8(
      hPipe,                  // pipe handle
      lpvMessage,             // message
      FUNC9(lpvMessage) + 1, // message length
      &cbWritten,             // bytes written
      NULL);                  // not overlapped
   if (! fSuccess)
      FUNC4("WriteFile");

   do
   {
   // Read from the pipe.

      fSuccess = FUNC5(
         hPipe,    // pipe handle
         chBuf,    // buffer to receive reply
         512,      // size of buffer
         &cbRead,  // number of bytes read
         NULL);    // not overlapped

      if (! fSuccess && FUNC2() != ERROR_MORE_DATA)
         break;

      // Reply from the pipe is written to STDOUT.

      if (! FUNC8(FUNC3(STD_OUTPUT_HANDLE),
         chBuf, cbRead, &cbWritten, NULL))
      {
         break;
      }

   } while (! fSuccess);  // repeat loop if ERROR_MORE_DATA

   FUNC0(hPipe);

   return 0;
}