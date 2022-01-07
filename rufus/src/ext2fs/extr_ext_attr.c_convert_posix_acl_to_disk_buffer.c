
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ a_version; } ;
typedef TYPE_1__ posix_acl_xattr_header ;
struct TYPE_6__ {int e_tag; int e_perm; int e_id; } ;
typedef TYPE_2__ posix_acl_xattr_entry ;
struct TYPE_7__ {scalar_t__ a_version; } ;
typedef TYPE_3__ ext4_acl_header ;
typedef int ext4_acl_entry_short ;
struct TYPE_8__ {scalar_t__ e_id; void* e_perm; void* e_tag; } ;
typedef TYPE_4__ ext4_acl_entry ;
typedef int errcode_t ;
 int EINVAL ;
 int ENOMEM ;
 int EXT4_ACL_VERSION ;
 int POSIX_ACL_XATTR_VERSION ;
 void* ext2fs_cpu_to_le16 (int) ;
 scalar_t__ ext2fs_cpu_to_le32 (int ) ;
 int posix_acl_xattr_count (size_t) ;

__attribute__((used)) static errcode_t convert_posix_acl_to_disk_buffer(const void *value, size_t size,
        void *out_buf, size_t *size_out)
{
 const posix_acl_xattr_header *header =
  (const posix_acl_xattr_header*) value;
 const posix_acl_xattr_entry *end, *entry =
  (const posix_acl_xattr_entry *)(header+1);
 ext4_acl_header *ext_acl;
 size_t s;
 char *e;

 int count;

 if (!value)
  return EINVAL;
 if (size < sizeof(posix_acl_xattr_header))
  return ENOMEM;
 if (header->a_version != ext2fs_cpu_to_le32(POSIX_ACL_XATTR_VERSION))
  return EINVAL;

 count = posix_acl_xattr_count(size);
 ext_acl = out_buf;
 ext_acl->a_version = ext2fs_cpu_to_le32(EXT4_ACL_VERSION);

 if (count <= 0)
  return EINVAL;

 e = (char *) out_buf + sizeof(ext4_acl_header);
 s = sizeof(ext4_acl_header);
 for (end = entry + count; entry != end;entry++) {
  ext4_acl_entry *disk_entry = (ext4_acl_entry*) e;
  disk_entry->e_tag = ext2fs_cpu_to_le16(entry->e_tag);
  disk_entry->e_perm = ext2fs_cpu_to_le16(entry->e_perm);

  switch(entry->e_tag) {
   case 128:
   case 132:
   case 131:
   case 130:
    e += sizeof(ext4_acl_entry_short);
    s += sizeof(ext4_acl_entry_short);
    break;
   case 129:
   case 133:
    disk_entry->e_id = ext2fs_cpu_to_le32(entry->e_id);
    e += sizeof(ext4_acl_entry);
    s += sizeof(ext4_acl_entry);
    break;
  }
 }
 *size_out = s;
 return 0;
}
