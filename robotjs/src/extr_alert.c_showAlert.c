
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ SInt32 ;
typedef int * CFStringRef ;
typedef scalar_t__ CFOptionFlags ;


 int CFRelease (int *) ;
 int * CFStringCreateWithUTF8String (char const*) ;
 scalar_t__ CFUserNotificationDisplayAlert (double,int ,int *,int *,int *,int *,int *,int *,int *,int *,scalar_t__*) ;
 int EXEC_FAILED ;
 int IDOK ;
 int MB_OK ;
 int MB_OKCANCEL ;
 int MessageBox (int *,char const*,char const*,int ) ;
 int TASK_SUCCESS ;
 int asprintf (char**,char*,char const*,...) ;
 int fputs (char*,int ) ;
 int free (char*) ;
 scalar_t__ kCFUserNotificationDefaultResponse ;
 int kCFUserNotificationNoteAlertLevel ;
 int stderr ;
 int xmessage (char**,int*) ;

int showAlert(const char *title, const char *msg, const char *defaultButton,
              const char *cancelButton)
{
 int response = MessageBox(((void*)0), msg, title,
                           (cancelButton == ((void*)0)) ? MB_OK : MB_OKCANCEL);
 return (response == IDOK) ? 0 : 1;

}
