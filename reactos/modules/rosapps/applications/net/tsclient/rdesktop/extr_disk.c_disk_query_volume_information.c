
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32 ;
struct fileinfo {int path; } ;
struct STATFS_T {int f_blocks; int f_bfree; int f_bsize; } ;
struct TYPE_7__ {int serial; int type; int label; } ;
struct TYPE_6__ {struct fileinfo* fileinfo; } ;
typedef int STREAM ;
typedef TYPE_1__ RDPCLIENT ;
typedef int NTSTATUS ;
typedef size_t NTHANDLE ;
typedef TYPE_2__ FsInfoType ;


 int FS_CASE_IS_PRESERVED ;
 int FS_CASE_SENSITIVE ;
 int F_NAMELEN (struct STATFS_T) ;
 TYPE_2__* FsVolumeInfo (int ) ;
 scalar_t__ STATFS_FN (int ,struct STATFS_T*) ;
 int STATUS_ACCESS_DENIED ;
 int STATUS_INVALID_PARAMETER ;
 int STATUS_SUCCESS ;
 int out_uint32_le (int ,int) ;
 int out_uint8 (int ,int ) ;
 int perror (char*) ;
 int rdp_out_unistr (TYPE_1__*,int ,int ,int) ;
 int strlen (int ) ;
 int unimpl (char*,int) ;

NTSTATUS
disk_query_volume_information(RDPCLIENT * This, NTHANDLE handle, uint32 info_class, STREAM out)
{
 struct STATFS_T stat_fs;
 struct fileinfo *pfinfo;
 FsInfoType *fsinfo;

 pfinfo = &(This->fileinfo[handle]);

 if (STATFS_FN(pfinfo->path, &stat_fs) != 0)
 {
  perror("statfs");
  return STATUS_ACCESS_DENIED;
 }

 fsinfo = FsVolumeInfo(pfinfo->path);

 switch (info_class)
 {
  case 128:

   out_uint32_le(out, 0);
   out_uint32_le(out, 0);
   out_uint32_le(out, fsinfo->serial);

   out_uint32_le(out, 2 * strlen(fsinfo->label));

   out_uint8(out, 0);
   rdp_out_unistr(This, out, fsinfo->label, 2 * strlen(fsinfo->label) - 2);
   break;

  case 129:

   out_uint32_le(out, stat_fs.f_blocks);
   out_uint32_le(out, 0);
   out_uint32_le(out, stat_fs.f_bfree);
   out_uint32_le(out, 0);
   out_uint32_le(out, stat_fs.f_bsize / 0x200);
   out_uint32_le(out, 0x200);
   break;

  case 136:

   out_uint32_le(out, FS_CASE_SENSITIVE | FS_CASE_IS_PRESERVED);
   out_uint32_le(out, F_NAMELEN(stat_fs));

   out_uint32_le(out, 2 * strlen(fsinfo->type));
   rdp_out_unistr(This, out, fsinfo->type, 2 * strlen(fsinfo->type) - 2);
   break;

  case 132:
  case 134:
  case 135:
  case 133:
  case 130:
  case 131:

  default:

   unimpl("IRP Query Volume Information class: 0x%x\n", info_class);
   return STATUS_INVALID_PARAMETER;
 }
 return STATUS_SUCCESS;
}
