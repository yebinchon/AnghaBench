
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint32 ;
struct stat {int st_mode; } ;
struct TYPE_7__ {int notify_stamp; TYPE_2__* fileinfo; TYPE_1__* rdpdr_device; } ;
struct TYPE_6__ {size_t device_id; size_t flags_and_attributes; size_t accessmask; int delete_on_close; int path; int * pdir; } ;
struct TYPE_5__ {char* local_path; } ;
typedef TYPE_3__ RDPCLIENT ;
typedef int NTSTATUS ;
typedef int NTHANDLE ;
typedef int DIR ;




 int DIRFD (int *) ;




 size_t FILE_DIRECTORY_FILE ;
 size_t FILE_NON_DIRECTORY_FILE ;
 int F_SETFL ;
 int False ;
 size_t GENERIC_ALL ;
 size_t GENERIC_READ ;
 size_t GENERIC_WRITE ;
 int MAX_OPEN_FILES ;


 int O_CREAT ;
 int O_EXCL ;
 int O_NONBLOCK ;
 int O_RDONLY ;
 int O_RDWR ;
 int O_TRUNC ;
 int O_WRONLY ;
 int PATH_MAX ;
 int STATUS_ACCESS_DENIED ;
 int STATUS_FILE_IS_A_DIRECTORY ;
 int STATUS_NO_SUCH_FILE ;
 int STATUS_OBJECT_NAME_COLLISION ;
 int STATUS_SUCCESS ;
 int S_IRGRP ;
 int S_IROTH ;
 int S_IRWXU ;
 scalar_t__ S_ISDIR (int ) ;
 int S_IXGRP ;
 int S_IXOTH ;

 int True ;
 int errno ;
 int error (char*,int) ;
 int exit (int) ;
 int fcntl (int,int ,int ) ;
 int mkdir (char*,int) ;
 int open_weak_exclusive (char*,int,int) ;
 int * opendir (char*) ;
 int perror (char*) ;
 int sprintf (char*,char*,char*,char*) ;
 scalar_t__ stat (char*,struct stat*) ;
 int strlen (char*) ;
 int strncpy (int ,char*,int) ;
 int unlink (char*) ;

__attribute__((used)) static NTSTATUS
disk_create(RDPCLIENT * This, uint32 device_id, uint32 accessmask, uint32 sharemode, uint32 create_disposition,
     uint32 flags_and_attributes, char *filename, NTHANDLE * phandle)
{
 NTHANDLE handle;
 DIR *dirp;
 int flags, mode;
 char path[PATH_MAX];
 struct stat filestat;

 handle = 0;
 dirp = ((void*)0);
 flags = 0;
 mode = S_IRWXU | S_IRGRP | S_IXGRP | S_IROTH | S_IXOTH;

 if (*filename && filename[strlen(filename) - 1] == '/')
  filename[strlen(filename) - 1] = 0;
 sprintf(path, "%s%s", This->rdpdr_device[device_id].local_path, filename);

 switch (create_disposition)
 {
  case 136:


   unlink(path);
   flags |= O_CREAT;
   break;

  case 135:


   flags |= O_CREAT | O_EXCL;
   break;

  case 130:


   flags |= O_CREAT;
   break;

  case 129:


   break;

  case 128:


   flags |= O_TRUNC;
   break;
 }




 if ((stat(path, &filestat) == 0) && (S_ISDIR(filestat.st_mode)))
 {
  if (flags_and_attributes & FILE_NON_DIRECTORY_FILE)
   return STATUS_FILE_IS_A_DIRECTORY;
  else
   flags_and_attributes |= FILE_DIRECTORY_FILE;
 }

 if (flags_and_attributes & FILE_DIRECTORY_FILE)
 {
  if (flags & O_CREAT)
  {
   mkdir(path, mode);
  }

  dirp = opendir(path);
  if (!dirp)
  {
   switch (errno)
   {
    case 134:

     return STATUS_ACCESS_DENIED;

    case 131:

     return STATUS_NO_SUCH_FILE;

    default:

     perror("opendir");
     return STATUS_NO_SUCH_FILE;
   }
  }
  handle = DIRFD(dirp);
 }
 else
 {

  if (accessmask & GENERIC_ALL
      || (accessmask & GENERIC_READ && accessmask & GENERIC_WRITE))
  {
   flags |= O_RDWR;
  }
  else if ((accessmask & GENERIC_WRITE) && !(accessmask & GENERIC_READ))
  {
   flags |= O_WRONLY;
  }
  else
  {
   flags |= O_RDONLY;
  }

  handle = open_weak_exclusive(path, flags, mode);
  if (handle == -1)
  {
   switch (errno)
   {
    case 132:

     return STATUS_FILE_IS_A_DIRECTORY;

    case 134:

     return STATUS_ACCESS_DENIED;

    case 131:

     return STATUS_NO_SUCH_FILE;
    case 133:

     return STATUS_OBJECT_NAME_COLLISION;
    default:

     perror("open");
     return STATUS_NO_SUCH_FILE;
   }
  }


  if (fcntl(handle, F_SETFL, O_NONBLOCK) == -1)
   perror("fcntl");
 }

 if (handle >= MAX_OPEN_FILES)
 {
  error("Maximum number of open files (%s) reached. Increase MAX_OPEN_FILES!\n",
        handle);
  exit(1);
 }

 if (dirp)
  This->fileinfo[handle].pdir = dirp;
 else
  This->fileinfo[handle].pdir = ((void*)0);

 This->fileinfo[handle].device_id = device_id;
 This->fileinfo[handle].flags_and_attributes = flags_and_attributes;
 This->fileinfo[handle].accessmask = accessmask;
 strncpy(This->fileinfo[handle].path, path, PATH_MAX - 1);
 This->fileinfo[handle].delete_on_close = False;
 This->notify_stamp = True;

 *phandle = handle;
 return STATUS_SUCCESS;
}
