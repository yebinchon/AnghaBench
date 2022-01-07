
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32 ;
struct stat {int st_mode; int st_size; int st_ctime; int st_mtime; int st_atime; } ;
struct fileinfo {char* path; int pattern; int * pdir; } ;
struct dirent {char* d_name; } ;
typedef int fstat ;
struct TYPE_4__ {struct fileinfo* fileinfo; } ;
typedef int STREAM ;
typedef TYPE_1__ RDPCLIENT ;
typedef int NTSTATUS ;
typedef size_t NTHANDLE ;
typedef int DIR ;





 int FILE_ATTRIBUTE_DIRECTORY ;
 int FILE_ATTRIBUTE_HIDDEN ;
 int FILE_ATTRIBUTE_NORMAL ;
 int FILE_ATTRIBUTE_READONLY ;

 int PATH_MAX ;
 int STATUS_INVALID_PARAMETER ;
 int STATUS_NO_MORE_FILES ;
 int STATUS_NO_SUCH_FILE ;
 int STATUS_SUCCESS ;
 int S_ISDIR (int) ;
 int S_IWUSR ;
 int errno ;
 int fnmatch (int ,char*,int ) ;
 int get_create_time (struct stat*) ;
 int memset (struct stat*,int ,int) ;
 int out_uint32_le (int ,int) ;
 int out_uint8 (int ,int) ;
 int out_uint8s (int ,int) ;
 int perror (char*) ;
 int rdp_out_unistr (TYPE_1__*,int ,char*,int) ;
 struct dirent* readdir (int *) ;
 int rewinddir (int *) ;
 int seconds_since_1970_to_filetime (int ,int*,int*) ;
 int sprintf (char*,char*,char*,char*) ;
 int stat (char*,struct stat*) ;
 int strlen (char*) ;
 int strncpy (int ,int ,int ) ;
 int strrchr (char*,char) ;
 int unimpl (char*,int) ;

NTSTATUS
disk_query_directory(RDPCLIENT * This, NTHANDLE handle, uint32 info_class, char *pattern, STREAM out)
{
 uint32 file_attributes, ft_low, ft_high;
 char *dirname, fullpath[PATH_MAX];
 DIR *pdir;
 struct dirent *pdirent;
 struct stat fstat;
 struct fileinfo *pfinfo;

 pfinfo = &(This->fileinfo[handle]);
 pdir = pfinfo->pdir;
 dirname = pfinfo->path;
 file_attributes = 0;

 switch (info_class)
 {
  case 128:


   if (pattern[0] != 0)
   {
    strncpy(pfinfo->pattern, 1 + strrchr(pattern, '/'), PATH_MAX - 1);
    rewinddir(pdir);
   }


   pdirent = readdir(pdir);
   while (pdirent && fnmatch(pfinfo->pattern, pdirent->d_name, 0) != 0)
    pdirent = readdir(pdir);

   if (pdirent == ((void*)0))
    return STATUS_NO_MORE_FILES;


   sprintf(fullpath, "%s/%s", dirname, pdirent->d_name);

   if (stat(fullpath, &fstat))
   {
    switch (errno)
    {
     case 129:
     case 130:
     case 131:

      memset(&fstat, 0, sizeof(fstat));
      break;
     default:


      perror(fullpath);
      out_uint8(out, 0);
      return STATUS_NO_SUCH_FILE;
    }
   }

   if (S_ISDIR(fstat.st_mode))
    file_attributes |= FILE_ATTRIBUTE_DIRECTORY;
   if (pdirent->d_name[0] == '.')
    file_attributes |= FILE_ATTRIBUTE_HIDDEN;
   if (!file_attributes)
    file_attributes |= FILE_ATTRIBUTE_NORMAL;
   if (!(fstat.st_mode & S_IWUSR))
    file_attributes |= FILE_ATTRIBUTE_READONLY;


   out_uint8s(out, 8);

   seconds_since_1970_to_filetime(get_create_time(&fstat), &ft_high, &ft_low);
   out_uint32_le(out, ft_low);
   out_uint32_le(out, ft_high);

   seconds_since_1970_to_filetime(fstat.st_atime, &ft_high, &ft_low);
   out_uint32_le(out, ft_low);
   out_uint32_le(out, ft_high);

   seconds_since_1970_to_filetime(fstat.st_mtime, &ft_high, &ft_low);
   out_uint32_le(out, ft_low);
   out_uint32_le(out, ft_high);

   seconds_since_1970_to_filetime(fstat.st_ctime, &ft_high, &ft_low);
   out_uint32_le(out, ft_low);
   out_uint32_le(out, ft_high);

   out_uint32_le(out, fstat.st_size);
   out_uint32_le(out, 0);
   out_uint32_le(out, fstat.st_size);
   out_uint32_le(out, 0);
   out_uint32_le(out, file_attributes);
   out_uint8(out, 2 * strlen(pdirent->d_name) + 2);
   out_uint8s(out, 7);
   out_uint8(out, 0);
   out_uint8s(out, 2 * 12);
   rdp_out_unistr(This, out, pdirent->d_name, 2 * strlen(pdirent->d_name));
   break;

  default:




   unimpl("IRP Query Directory sub: 0x%x\n", info_class);
   return STATUS_INVALID_PARAMETER;
 }

 return STATUS_SUCCESS;
}
