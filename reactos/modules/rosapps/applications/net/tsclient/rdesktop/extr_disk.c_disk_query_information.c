
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32 ;
struct stat {int st_mode; int st_size; int st_nlink; int st_ctime; int st_mtime; int st_atime; } ;
struct TYPE_5__ {TYPE_1__* fileinfo; } ;
struct TYPE_4__ {char* path; } ;
typedef int STREAM ;
typedef TYPE_2__ RDPCLIENT ;
typedef int NTSTATUS ;
typedef size_t NTHANDLE ;


 int FILE_ATTRIBUTE_DIRECTORY ;
 int FILE_ATTRIBUTE_HIDDEN ;
 int FILE_ATTRIBUTE_NORMAL ;
 int FILE_ATTRIBUTE_READONLY ;



 int STATUS_ACCESS_DENIED ;
 int STATUS_INVALID_PARAMETER ;
 int STATUS_SUCCESS ;
 scalar_t__ S_ISDIR (int) ;
 int S_IWUSR ;
 scalar_t__ fstat (size_t,struct stat*) ;
 int get_create_time (struct stat*) ;
 int out_uint32_le (int ,int) ;
 int out_uint8 (int ,int) ;
 int perror (char*) ;
 int seconds_since_1970_to_filetime (int ,int*,int*) ;
 char* strrchr (char*,char) ;
 int unimpl (char*,int) ;

NTSTATUS
disk_query_information(RDPCLIENT * This, NTHANDLE handle, uint32 info_class, STREAM out)
{
 uint32 file_attributes, ft_high, ft_low;
 struct stat filestat;
 char *path, *filename;

 path = This->fileinfo[handle].path;


 if (fstat(handle, &filestat) != 0)
 {
  perror("stat");
  out_uint8(out, 0);
  return STATUS_ACCESS_DENIED;
 }


 file_attributes = 0;
 if (S_ISDIR(filestat.st_mode))
  file_attributes |= FILE_ATTRIBUTE_DIRECTORY;

 filename = 1 + strrchr(path, '/');
 if (filename && filename[0] == '.')
  file_attributes |= FILE_ATTRIBUTE_HIDDEN;

 if (!file_attributes)
  file_attributes |= FILE_ATTRIBUTE_NORMAL;

 if (!(filestat.st_mode & S_IWUSR))
  file_attributes |= FILE_ATTRIBUTE_READONLY;


 switch (info_class)
 {
  case 130:
   seconds_since_1970_to_filetime(get_create_time(&filestat), &ft_high,
             &ft_low);
   out_uint32_le(out, ft_low);
   out_uint32_le(out, ft_high);

   seconds_since_1970_to_filetime(filestat.st_atime, &ft_high, &ft_low);
   out_uint32_le(out, ft_low);
   out_uint32_le(out, ft_high);

   seconds_since_1970_to_filetime(filestat.st_mtime, &ft_high, &ft_low);
   out_uint32_le(out, ft_low);
   out_uint32_le(out, ft_high);

   seconds_since_1970_to_filetime(filestat.st_ctime, &ft_high, &ft_low);
   out_uint32_le(out, ft_low);
   out_uint32_le(out, ft_high);

   out_uint32_le(out, file_attributes);
   break;

  case 128:

   out_uint32_le(out, filestat.st_size);
   out_uint32_le(out, 0);
   out_uint32_le(out, filestat.st_size);
   out_uint32_le(out, 0);
   out_uint32_le(out, filestat.st_nlink);
   out_uint8(out, 0);
   out_uint8(out, S_ISDIR(filestat.st_mode) ? 1 : 0);
   break;

  case 129:

   out_uint32_le(out, file_attributes);
   out_uint32_le(out, 0);
   break;

  default:

   unimpl("IRP Query (File) Information class: 0x%x\n", info_class);
   return STATUS_INVALID_PARAMETER;
 }
 return STATUS_SUCCESS;
}
