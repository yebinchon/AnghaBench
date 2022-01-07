
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int buffer ;
struct TYPE_6__ {char* name; int fileCount; TYPE_2__* files; } ;
struct TYPE_5__ {char* name; size_t fileSize; int patchCount; TYPE_1__* patches; } ;
struct TYPE_4__ {int offset; unsigned char expected; unsigned char patched; } ;


 int MAX_PATH ;
 scalar_t__ _access (char*,int ) ;
 int _getch () ;
 int _snprintf (char*,int,char*,char const*) ;
 int * fgets (char*,int,int ) ;
 int free (unsigned char*) ;
 unsigned char* loadFile (char const*,size_t*) ;
 scalar_t__ loadPatch () ;
 int m_argc ;
 int * m_argv ;
 TYPE_3__ m_patch ;
 int printUsage () ;
 int printf (char*,...) ;
 scalar_t__ saveFile (char const*,unsigned char*,size_t) ;
 int stdin ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static int
applyPatch()
{
   int c, i, j, makeBackup;
   size_t fileSize;
   unsigned char *file;
   char *p;
   const char *fileName;
   char buffer[MAX_PATH];


   if (m_argc > 1 && strcmp(m_argv[1], "-d") != 0)
   {
      printUsage();
      return -1;
   }


   if (loadPatch() < 0)
   {
      printf("This executable doesn't contain a patch, use -c to create one.\n");
      return -1;
   }

   if (m_argc > 1)
   {

      printf("Patch name: %s\n", m_patch.name);
      printf("File count: %d\n", m_patch.fileCount);
      for (i = 0; i < m_patch.fileCount; i++)
      {
         printf("----------------------\n"
                "File name:   %s\n"
                "File size:   %Id bytes\n",
                m_patch.files[i].name, m_patch.files[i].fileSize);
         printf("Patch count: %d\n", m_patch.files[i].patchCount);
         for (j = 0; j < m_patch.files[i].patchCount; j++)
         {
            printf("  Offset 0x%Ix   0x%02x -> 0x%02x\n",
                   m_patch.files[i].patches[j].offset,
                   m_patch.files[i].patches[j].expected,
                   m_patch.files[i].patches[j].patched);
         }
      }
   }
   else
   {

      printf("Applying patch...\n");
      for (i = 0; i < m_patch.fileCount; i++)
      {

         fileName = m_patch.files[i].name;
applyPatch_retry_file:
         file = loadFile(fileName, &fileSize);
         if (file == ((void*)0))
         {
            printf("File %s not found! ", fileName);
applyPatch_file_open_error:
            printf("(S)kip, (R)etry, (A)bort, (M)anually enter filename");
            do
            {
               c = _getch();
            }
            while (c != 's' && c != 'r' && c != 'a' && c != 'm');
            printf("\n");
            if (c == 's')
            {
               continue;
            }
            else if (c == 'r')
            {
               goto applyPatch_retry_file;
            }
            else if (c == 'a')
            {
               return 0;
            }
            else if (c == 'm')
            {
               if (fgets(buffer, sizeof (buffer), stdin) == ((void*)0))
               {
                  printf("fgets() failed!\n");
                  return -1;
               }
               p = strchr(buffer, '\r');
               if (p != ((void*)0))
                  *p = '\0';
               p = strchr(buffer, '\n');
               if (p != ((void*)0))
                  *p = '\0';

               fileName = buffer;
               goto applyPatch_retry_file;
            }
         }


         if (fileSize != m_patch.files[i].fileSize)
         {
            free(file);
            printf("File %s has unexpected filesize of %Id bytes (%Id bytes expected)\n",
                   fileName, fileSize, m_patch.files[i].fileSize);
            if (fileName != m_patch.files[i].name)
            {
               goto applyPatch_file_open_error;
            }
            return -1;
         }


         printf("Do you want to make a backup of %s? (Y)es, (N)o, (A)bort", fileName);
         do
         {
            c = _getch();
         }
         while (c != 'y' && c != 'n' && c != 'a');
         printf("\n");
         if (c == 'y')
         {
            char buffer[MAX_PATH];
            _snprintf(buffer, MAX_PATH, "%s.bak", fileName);
            buffer[MAX_PATH-1] = '\0';
            makeBackup = 1;
            if (_access(buffer, 0) >= 0)
            {
               printf("File %s already exists, overwrite? (Y)es, (N)o, (A)bort", buffer);
               do
               {
                  c = _getch();
               }
               while (c != 'y' && c != 'n' && c != 'a');
               printf("\n");
               if (c == 'n')
                  makeBackup = 0;
               else if (c == 'a')
               {
                  free(file);
                  return 0;
               }
            }
            if (makeBackup && saveFile(buffer, file, fileSize) < 0)
            {
               free(file);
               return -1;
            }
         }
         else if (c == 'a')
         {
            free(file);
            return 0;
         }


         for (j = 0; j < m_patch.files[i].patchCount; j++)
         {
            int offset = m_patch.files[i].patches[j].offset;
            if (file[offset] != m_patch.files[i].patches[j].expected)
            {
               printf("Unexpected value in file %s at offset 0x%x: expected = 0x%02x, found = 0x%02x\n",
                      fileName, offset, m_patch.files[i].patches[j].expected, file[offset]);
               free(file);
               return -1;
            }
            file[offset] = m_patch.files[i].patches[j].patched;
         }


         if (saveFile(fileName, file, fileSize) < 0)
         {
            free(file);
            return -1;
         }
         free(file);
      }

      printf("Patch applied sucessfully!\n");
   }

   return 0;
}
