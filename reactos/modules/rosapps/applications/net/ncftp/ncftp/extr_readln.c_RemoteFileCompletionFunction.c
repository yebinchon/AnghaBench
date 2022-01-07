
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* RemoteCompletionFunction (char const*,int,int ) ;

__attribute__((used)) static char *
RemoteFileCompletionFunction(const char *text, int state)
{
 char *cp;

 cp = RemoteCompletionFunction(text, state, 0);
 return cp;
}
