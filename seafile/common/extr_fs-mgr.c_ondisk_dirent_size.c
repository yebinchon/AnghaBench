
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name_len; } ;
typedef TYPE_1__ SeafDirent ;
typedef int DirentOndisk ;



__attribute__((used)) inline static int
ondisk_dirent_size (SeafDirent *dirent)
{
    return sizeof(DirentOndisk) + dirent->name_len;
}
