
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef scalar_t__ ULONG ;
typedef int PINFCACHE ;
typedef int INFSTATUS ;
typedef scalar_t__ HINF ;
typedef int FILE ;
typedef char CHAR ;


 int DPRINT (char*) ;
 int DPRINT1 (char*,int ) ;
 int FREE (int *) ;
 int INF_SUCCESS (int ) ;
 int InfpBuildFileBuffer (int ,int **,scalar_t__*) ;
 int errno ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 scalar_t__ fwrite (int *,size_t,size_t,int *) ;

int
InfHostWriteFile(HINF InfHandle,
                 const CHAR *FileName,
                 const CHAR *HeaderComment)
{
  WCHAR *Buffer;
  ULONG BufferSize;
  INFSTATUS Status;
  FILE *File;

  Status = InfpBuildFileBuffer((PINFCACHE) InfHandle, &Buffer, &BufferSize);
  if (! INF_SUCCESS(Status))
    {
      errno = Status;
      return -1;
    }

  File = fopen(FileName, "wb");
  if (((void*)0) == File)
    {
      FREE(Buffer);
      DPRINT1("fopen() failed (errno %d)\n", errno);
      return -1;
    }

  DPRINT("fopen() successful\n");

  if (((void*)0) != HeaderComment && '\0' != *HeaderComment)
    {

    }

  if (BufferSize != fwrite(Buffer, (size_t)1, (size_t)BufferSize, File))
    {
      DPRINT1("fwrite() failed (errno %d)\n", errno);
      fclose(File);
      FREE(Buffer);
      return -1;
    }

  fclose(File);

  FREE(Buffer);

  return 0;
}
