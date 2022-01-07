
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int fileCount; TYPE_1__* files; void* name; } ;
struct TYPE_6__ {struct TYPE_6__* patches; void* name; } ;
typedef int PatchedFile ;


 int compareFiles (TYPE_1__*,void*) ;
 int free (TYPE_1__*) ;
 int m_argc ;
 void** m_argv ;
 TYPE_3__ m_patch ;
 TYPE_1__* malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;
 int outputPatch (char const*) ;
 int printUsage () ;
 int printf (char*) ;

__attribute__((used)) static int
createPatch()
{
   int i, status;
   const char *outputFileName;


   if (m_argc < 6 || (m_argc % 2) != 0)
   {
      printUsage();
      return -1;
   }

   outputFileName = m_argv[3];
   m_patch.name = m_argv[2];


   m_patch.fileCount = (m_argc - 4) / 2;
   m_patch.files = malloc(m_patch.fileCount * sizeof (PatchedFile));
   if (m_patch.files == ((void*)0))
   {
      printf("Out of memory!\n");
      return -1;
   }
   memset(m_patch.files, 0, m_patch.fileCount * sizeof (PatchedFile));


   for (i = 0; i < m_patch.fileCount; i++)
   {
      m_patch.files[i].name = m_argv[4 + (i * 2) + 1];
      status = compareFiles(m_patch.files + i, m_argv[4 + (i * 2) + 0]);
      if (status < 0)
      {
         for (i = 0; i < m_patch.fileCount; i++)
         {
            if (m_patch.files[i].patches != ((void*)0))
               free(m_patch.files[i].patches);
         }
         free(m_patch.files);
         m_patch.files = ((void*)0);
         m_patch.fileCount = 0;
         return status;
      }
   }


   return outputPatch(outputFileName);
}
