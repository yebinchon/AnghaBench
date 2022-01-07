
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int fileCount; TYPE_1__* files; int name; } ;
struct TYPE_7__ {int fileCount; char const* name; TYPE_2__* files; } ;
struct TYPE_6__ {int patchCount; char const* name; int * patches; int fileSize; } ;
struct TYPE_5__ {int patchCount; int patches; int name; int fileSize; } ;
typedef TYPE_2__ PatchedFile ;
typedef int PatchedByte ;
typedef TYPE_3__ Patch ;


 size_t PATCH_BUFFER_SIZE ;
 size_t SIZEOF_PATCH_BUFFER_MAGIC ;
 int free (char*) ;
 char* loadFile (char*,size_t*) ;
 char** m_argv ;
 TYPE_4__ m_patch ;
 int m_patchBuffer ;
 scalar_t__ memcmp (char*,int ,size_t) ;
 int memcpy (char*,int ,size_t) ;
 int memset (char*,int ,size_t) ;
 int printf (char*,...) ;
 scalar_t__ saveFile (char const*,char*,size_t) ;
 int strcpy (char*,int ) ;
 size_t strlen (int ) ;

__attribute__((used)) static int
outputPatch(const char *outputFileName)
{
   char *patchExe, *patchBuffer = ((void*)0);
   size_t i, size, patchExeSize, patchSize, stringSize, stringOffset, patchOffset;
   Patch *patch;
   PatchedFile *files;

   printf("Putting patch into %s...\n", outputFileName);


   patchSize = sizeof (Patch) + sizeof (PatchedFile) * m_patch.fileCount;
   stringSize = strlen(m_patch.name) + 1;
   for (i = 0; i < m_patch.fileCount; i++)
   {
      stringSize += strlen(m_patch.files[i].name) + 1;
      patchSize += sizeof (PatchedByte) * m_patch.files[i].patchCount;
   }
   if ((stringSize + patchSize) > PATCH_BUFFER_SIZE)
   {
      printf("Patch is too big - %u bytes maximum, %Iu bytes needed\n",
             PATCH_BUFFER_SIZE, stringSize + patchSize);
      return -1;
   }


   patchExe = loadFile(m_argv[0], &patchExeSize);
   if (patchExe == ((void*)0))
   {
      return -1;
   }


   for (i = 0; i < (patchExeSize - SIZEOF_PATCH_BUFFER_MAGIC); i++)
   {
      if (memcmp(patchExe + i, m_patchBuffer, SIZEOF_PATCH_BUFFER_MAGIC) == 0)
      {
         patchBuffer = patchExe + i + SIZEOF_PATCH_BUFFER_MAGIC;

         break;
      }
   }
   if (!(i < (patchExeSize - SIZEOF_PATCH_BUFFER_MAGIC)))
   {
      free(patchExe);
      printf("Couldn't find patch buffer magic in file %s - this shouldn't happen!!!\n", m_argv[0]);
      return -1;
   }


   patch = (Patch *)patchBuffer;
   files = (PatchedFile *)(patchBuffer + sizeof (Patch));
   patchOffset = sizeof (Patch) + sizeof (PatchedFile) * m_patch.fileCount;
   stringOffset = patchSize;

   patch->fileCount = m_patch.fileCount;
   patch->files = (PatchedFile *)sizeof (Patch);

   patch->name = (const char *)stringOffset;
   strcpy(patchBuffer + stringOffset, m_patch.name);
   stringOffset += strlen(m_patch.name) + 1;

   for (i = 0; i < m_patch.fileCount; i++)
   {
      files[i].fileSize = m_patch.files[i].fileSize;
      files[i].patchCount = m_patch.files[i].patchCount;

      files[i].name = (const char *)stringOffset;
      strcpy(patchBuffer + stringOffset, m_patch.files[i].name);
      stringOffset += strlen(m_patch.files[i].name) + 1;

      size = files[i].patchCount * sizeof (PatchedByte);
      files[i].patches = (PatchedByte *)patchOffset;
      memcpy(patchBuffer + patchOffset, m_patch.files[i].patches, size);
      patchOffset += size;
   }
   size = patchSize + stringSize;
   memset(patchBuffer + size, 0, PATCH_BUFFER_SIZE - size);


   if (saveFile(outputFileName, patchExe, patchExeSize) < 0)
   {
      free(patchExe);
      return -1;
   }
   free(patchExe);

   printf("Patch saved!\n");
   return 0;
}
