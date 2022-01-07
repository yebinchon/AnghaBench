
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ai ;
struct TYPE_8__ {scalar_t__ cargc; int * cargv; int noglobargv; int argbuf; } ;
struct TYPE_7__ {int flags; } ;
typedef TYPE_1__* CommandPtr ;
typedef TYPE_2__ ArgvInfo ;


 char* BookmarkCompletionFunction (char const*,int) ;
 char* CommandCompletionFunction (char const*,int) ;
 char* FindStartOfCurrentCommand () ;
 TYPE_1__* GetCommandByName (int ,int ) ;
 scalar_t__ HaveCommandNameOnly (char*) ;
 int MakeArgv (char*,scalar_t__*,int *,int,int ,int,int ,int) ;
 char* PrefOptCompletionFunction (char const*,int) ;
 char* RemoteDirCompletionFunction (char const*,int) ;
 char* RemoteFileCompletionFunction (char const*,int) ;
 int gl_filename_quoting_desired ;
 char* gl_local_filename_completion_proc (char const*,int) ;
 TYPE_1__* kAmbiguousCommand ;
 int kCompleteBookmark ;
 int kCompleteLocalDir ;
 int kCompleteLocalFile ;
 int kCompletePrefOpt ;
 int kCompleteRemoteDir ;
 int kCompleteRemoteFile ;
 TYPE_1__* kNoCommand ;
 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static char *
CompletionFunction(const char *text, int state)
{
 char *cp;
 char *cmdstart;
 ArgvInfo ai;
 int bUsed;
 CommandPtr cmdp;
 static int flags;

 if (state == 0) {
  flags = -1;
  cmdstart = FindStartOfCurrentCommand();
  if (cmdstart == ((void*)0))
   return ((void*)0);
  if (HaveCommandNameOnly(cmdstart)) {
   flags = -2;
   cp = CommandCompletionFunction(text, state);
   return cp;
  }

  (void) memset(&ai, 0, sizeof(ai));
  bUsed = MakeArgv(cmdstart, &ai.cargc, ai.cargv,
   (int) (sizeof(ai.cargv) / sizeof(char *)),
   ai.argbuf, sizeof(ai.argbuf),
   ai.noglobargv, 1);
  if (bUsed <= 0)
   return ((void*)0);
  if (ai.cargc == 0)
   return ((void*)0);

  cmdp = GetCommandByName(ai.cargv[0], 0);
  if (cmdp == kAmbiguousCommand) {
   return ((void*)0);
  } else if (cmdp == kNoCommand) {
   return ((void*)0);
  }
  flags = cmdp->flags;
 }
 if (flags == (-2)) {
  cp = CommandCompletionFunction(text, state);
  return cp;
 }
 if (flags < 0)
  return ((void*)0);
 if ((flags & (kCompleteLocalFile|kCompleteLocalDir)) != 0) {
  cp = gl_local_filename_completion_proc(text, state);
  return cp;
 } else if ((flags & kCompleteRemoteFile) != 0) {
  gl_filename_quoting_desired = 1;
  cp = RemoteFileCompletionFunction(text, state);
  return cp;
 } else if ((flags & kCompleteRemoteDir) != 0) {
  gl_filename_quoting_desired = 1;
  cp = RemoteDirCompletionFunction(text, state);
  return cp;
 } else if ((flags & kCompleteBookmark) != 0) {
  cp = BookmarkCompletionFunction(text, state);
  return cp;
 } else if ((flags & kCompletePrefOpt) != 0) {
  cp = PrefOptCompletionFunction(text, state);
  return cp;
 }
 return ((void*)0);
}
