
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* RemoteCompletionFunction (char const*,int,char) ;

__attribute__((used)) static char *
RemoteDirCompletionFunction(const char *text, int state)
{
 char *cp;

 cp = RemoteCompletionFunction(text, state, 'd');
 return cp;
}
