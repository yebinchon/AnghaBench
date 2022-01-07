
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct fileinfo {char* path; void* delete_on_close; scalar_t__ pdir; } ;
struct TYPE_4__ {int notify_stamp; struct fileinfo* fileinfo; } ;
typedef TYPE_1__ RDPCLIENT ;
typedef int NTSTATUS ;
typedef size_t NTHANDLE ;


 void* False ;
 int STATUS_ACCESS_DENIED ;
 int STATUS_CANCELLED ;
 int STATUS_INVALID_HANDLE ;
 int STATUS_SUCCESS ;
 int True ;
 scalar_t__ close (size_t) ;
 scalar_t__ closedir (scalar_t__) ;
 int perror (char*) ;
 int rdpdr_abort_io (TYPE_1__*,size_t,int ,int ) ;
 scalar_t__ rmdir (char*) ;
 scalar_t__ unlink (char*) ;

__attribute__((used)) static NTSTATUS
disk_close(RDPCLIENT * This, NTHANDLE handle)
{
 struct fileinfo *pfinfo;

 pfinfo = &(This->fileinfo[handle]);

 This->notify_stamp = True;

 rdpdr_abort_io(This, handle, 0, STATUS_CANCELLED);

 if (pfinfo->pdir)
 {
  if (closedir(pfinfo->pdir) < 0)
  {
   perror("closedir");
   return STATUS_INVALID_HANDLE;
  }

  if (pfinfo->delete_on_close)
   if (rmdir(pfinfo->path) < 0)
   {
    perror(pfinfo->path);
    return STATUS_ACCESS_DENIED;
   }
  pfinfo->delete_on_close = False;
 }
 else
 {
  if (close(handle) < 0)
  {
   perror("close");
   return STATUS_INVALID_HANDLE;
  }
  if (pfinfo->delete_on_close)
   if (unlink(pfinfo->path) < 0)
   {
    perror(pfinfo->path);
    return STATUS_ACCESS_DENIED;
   }

  pfinfo->delete_on_close = False;
 }

 return STATUS_SUCCESS;
}
