
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;


 int FALSE ;
 int MSG_000 ;
 int PrintStatus (int ,int ,char*) ;
 int SizeToHumanReadable (int ,int ,int ) ;
 int TRUE ;
 int safe_sprintf (char*,int,char*,int ) ;
 size_t strlen (char*) ;
 int uprintf (char*,char*) ;

__attribute__((used)) static void print_extracted_file(char* psz_fullpath, int64_t file_length)
{
 size_t i, nul_pos;

 if (psz_fullpath == ((void*)0))
  return;

 nul_pos = strlen(psz_fullpath);
 for (i=0; i<nul_pos; i++)
  if (psz_fullpath[i] == '/') psz_fullpath[i] = '\\';
 safe_sprintf(&psz_fullpath[nul_pos], 24, " (%s)", SizeToHumanReadable(file_length, TRUE, FALSE));
 uprintf("Extracting: %s\n", psz_fullpath);
 safe_sprintf(&psz_fullpath[nul_pos], 24, " (%s)", SizeToHumanReadable(file_length, FALSE, FALSE));
 PrintStatus(0, MSG_000, psz_fullpath);

 for (i=0; i<nul_pos; i++)
  if (psz_fullpath[i] == '\\') psz_fullpath[i] = '/';

 psz_fullpath[nul_pos] = 0;
}
