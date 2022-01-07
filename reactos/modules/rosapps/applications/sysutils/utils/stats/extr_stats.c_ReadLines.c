
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_3__ {scalar_t__ EmptyLines; scalar_t__ LineCount; } ;
typedef TYPE_1__* PFILE_INFO ;
typedef int FileBuffer ;
typedef int DWORD ;


 int FileHandle ;
 scalar_t__ ReadFile (int ,char*,int,int*,int *) ;
 scalar_t__ SkipEmptyLines ;

VOID
ReadLines(PFILE_INFO StatInfo)
{
  DWORD ReadBytes, LineLen;
  static char FileBuffer[1024];
  char LastChar = '\0';
  char *Current;

  LineLen = 0;
  while(ReadFile (FileHandle, FileBuffer, sizeof(FileBuffer), &ReadBytes, ((void*)0)) && ReadBytes >= sizeof(char))
  {
    for(Current = FileBuffer; ReadBytes > 0; ReadBytes -= sizeof(char), Current++)
    {
      if(*Current == '\n' && LastChar == '\r')
      {
        LastChar = '\0';
        if(!SkipEmptyLines || (LineLen > 0))
          StatInfo->LineCount++;
        if(LineLen == 0)
          StatInfo->EmptyLines++;
        LineLen = 0;
        continue;
      }
      LastChar = *Current;
      if(SkipEmptyLines && (*Current == ' ' || *Current == '\t'))
      {
        continue;
      }
      if(*Current != '\r')
        LineLen++;
    }
  }

  StatInfo->LineCount += (LineLen > 0);
  StatInfo->EmptyLines += ((LastChar != '\0') && (LineLen == 0));
}
