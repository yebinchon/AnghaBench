
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int sec; } ;
struct TYPE_6__ {int sec; } ;
struct ondisk_cache_entry {char* name; int sha1; int size; int gid; int uid; int mode; int ino; int dev; TYPE_4__ mtime; TYPE_2__ ctime; int flags; } ;
struct TYPE_7__ {void* sec; } ;
struct TYPE_5__ {void* sec; } ;
struct cache_entry {unsigned int ce_flags; int name; int sha1; int ce_size; void* ce_gid; void* ce_uid; void* ce_mode; void* ce_ino; void* ce_dev; TYPE_3__ ce_mtime; TYPE_1__ ce_ctime; } ;


 unsigned int CE_NAMEMASK ;
 int cache_entry_size (size_t) ;
 struct cache_entry* calloc (int,int ) ;
 int hashcpy (int ,int ) ;
 int memcpy (int ,char const*,size_t) ;
 int ntoh64 (int ) ;
 void* ntohl (int ) ;
 unsigned int ntohs (int ) ;
 size_t strlen (char const*) ;

__attribute__((used)) static int convert_from_disk(struct ondisk_cache_entry *ondisk, struct cache_entry **ce)
{
    size_t len;
    const char *name;
    unsigned int flags = 0;
    struct cache_entry *ret;

    flags = ntohs(ondisk->flags);

    len = flags & CE_NAMEMASK;
    name = ondisk->name;

    if (len == CE_NAMEMASK)
        len = strlen(name);

    ret = calloc(1, cache_entry_size(len));

    ret->ce_ctime.sec = ntohl(ondisk->ctime.sec);
    ret->ce_mtime.sec = ntohl(ondisk->mtime.sec);
    ret->ce_dev = ntohl(ondisk->dev);
    ret->ce_ino = ntohl(ondisk->ino);
    ret->ce_mode = ntohl(ondisk->mode);
    ret->ce_uid = ntohl(ondisk->uid);
    ret->ce_gid = ntohl(ondisk->gid);
    ret->ce_size = ntoh64(ondisk->size);

    ret->ce_flags = flags;

    hashcpy(ret->sha1, ondisk->sha1);





    memcpy(ret->name, name, len + 1);

    *ce = ret;

    return 0;
}
