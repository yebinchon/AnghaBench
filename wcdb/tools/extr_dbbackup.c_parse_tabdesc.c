
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* table; char* condition; } ;
typedef TYPE_1__ mm_backup_tabdesc ;
typedef int FILE ;


 int MMBAK_LOG_ERROR ;
 int SEEK_END ;
 int SEEK_SET ;
 scalar_t__ calloc (int,int) ;
 int exit (int) ;
 int fclose (int *) ;
 int feof (int *) ;
 int ferror (int *) ;
 char* fgets (char*,int,int *) ;
 int * fopen (char const*,char*) ;
 int fseek (int *,int ,int ) ;
 int ftell (int *) ;
 int g_num_tabdesc ;
 TYPE_1__* g_tabdesc ;
 char* g_tabdesc_buffer ;
 scalar_t__ malloc (long) ;
 int print_log (int ,char*) ;

__attribute__((used)) static void parse_tabdesc(const char *path)
{
 FILE *fp = fopen(path, "r");
 if (!fp) goto bail;


 fseek(fp, 0, SEEK_END);
 long file_len = ftell(fp) + 1;
 fseek(fp, 0, SEEK_SET);


 g_tabdesc_buffer = (char *) malloc(file_len);
 if (!g_tabdesc_buffer) goto bail;
 char *p = g_tabdesc_buffer;
 int count = 0;
 while (!feof(fp) && !ferror(fp) && p - g_tabdesc_buffer < file_len)
 {
  char *ret = fgets(p, g_tabdesc_buffer + file_len - p, fp);
  if (ret)
  {
   count++;
   char c;
   while (c = *p++)
   {
    if (c == '\n')
    {
     *(p - 1) = '\0';
     break;
    }
   }
  }
 }
 fclose(fp);
 fp = ((void*)0);


 g_tabdesc = (mm_backup_tabdesc *) calloc(count, sizeof(mm_backup_tabdesc));
 if (!g_tabdesc) goto bail;

 p = g_tabdesc_buffer;

 int i;
 for (i = 0; i < count; i++)
 {
  g_tabdesc[i].table = p;
  char c;
  while (c = *p++)
  {
   if (c == '|')
   {
    *(p - 1) = '\0';
    g_tabdesc[i].condition = p;
   }
  }
 }
 g_num_tabdesc = count;
 return;

bail:
 print_log(MMBAK_LOG_ERROR, "Cannot parse table descriptor.");
 if (fp) fclose(fp);
 exit(1);
}
