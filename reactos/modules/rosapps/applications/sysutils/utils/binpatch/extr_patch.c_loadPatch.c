
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {char* name; int fileCount; TYPE_1__* files; } ;
struct TYPE_5__ {int fileCount; scalar_t__ files; int * name; } ;
struct TYPE_4__ {char* name; int * patches; } ;
typedef TYPE_1__ PatchedFile ;
typedef int PatchedByte ;
typedef TYPE_2__ Patch ;


 int SIZEOF_PATCH_BUFFER_MAGIC ;
 TYPE_3__ m_patch ;
 char* m_patchBuffer ;
 int printf (char*,char*) ;

__attribute__((used)) static int
loadPatch()
{
   char *p;
   Patch *patch;
   int i;

   p = m_patchBuffer + SIZEOF_PATCH_BUFFER_MAGIC;
   patch = (Patch *)p;

   if (patch->name == ((void*)0))
   {
      return -1;
   }

   m_patch.name = p + (intptr_t)patch->name;
   m_patch.fileCount = patch->fileCount;
   m_patch.files = (PatchedFile *)(p + (intptr_t)patch->files);

   for (i = 0; i < m_patch.fileCount; i++)
   {
      m_patch.files[i].name = p + (intptr_t)m_patch.files[i].name;
      m_patch.files[i].patches = (PatchedByte *)(p + (intptr_t)m_patch.files[i].patches);
   }

   printf("Patch %s loaded...\n", m_patch.name);
   return 0;
}
