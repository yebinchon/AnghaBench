
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32 ;
struct stat {scalar_t__ st_ctime; scalar_t__ st_mtime; } ;
struct fileinfo {char* path; } ;
struct dirent {char* d_name; } ;
struct TYPE_6__ {scalar_t__ total_time; scalar_t__ num_entries; scalar_t__ status_time; scalar_t__ modify_time; } ;
struct TYPE_5__ {struct fileinfo* fileinfo; } ;
typedef TYPE_1__ RDPCLIENT ;
typedef int NTSTATUS ;
typedef size_t NTHANDLE ;
typedef TYPE_2__ NOTIFY ;
typedef int DIR ;


 int STATUS_ACCESS_DENIED ;
 int STATUS_PENDING ;
 int closedir (int *) ;
 scalar_t__ fstat (size_t,struct stat*) ;
 int * opendir (char*) ;
 int perror (char*) ;
 struct dirent* readdir (int *) ;
 int sprintf (char*,char*,char*,char*) ;
 int stat (char*,struct stat*) ;
 int strcmp (char*,char*) ;
 scalar_t__ strlen (char*) ;
 int xfree (char*) ;
 scalar_t__ xmalloc (scalar_t__) ;

__attribute__((used)) static NTSTATUS
NotifyInfo(RDPCLIENT * This, NTHANDLE handle, uint32 info_class, NOTIFY * p)
{
 struct fileinfo *pfinfo;
 struct stat buf;
 struct dirent *dp;
 char *fullname;
 DIR *dpr;

 pfinfo = &(This->fileinfo[handle]);
 if (fstat(handle, &buf) < 0)
 {
  perror("NotifyInfo");
  return STATUS_ACCESS_DENIED;
 }
 p->modify_time = buf.st_mtime;
 p->status_time = buf.st_ctime;
 p->num_entries = 0;
 p->total_time = 0;


 dpr = opendir(pfinfo->path);
 if (!dpr)
 {
  perror("NotifyInfo");
  return STATUS_ACCESS_DENIED;
 }


 while ((dp = readdir(dpr)))
 {
  if (!strcmp(dp->d_name, ".") || !strcmp(dp->d_name, ".."))
   continue;
  p->num_entries++;
  fullname = (char *) xmalloc(strlen(pfinfo->path) + strlen(dp->d_name) + 2);
  sprintf(fullname, "%s/%s", pfinfo->path, dp->d_name);

  if (!stat(fullname, &buf))
  {
   p->total_time += (buf.st_mtime + buf.st_ctime);
  }

  xfree(fullname);
 }
 closedir(dpr);

 return STATUS_PENDING;
}
