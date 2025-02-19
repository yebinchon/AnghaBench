
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int S_IFDIR ;
 unsigned int S_IFLNK ;
 unsigned int S_IFREG ;
 scalar_t__ S_ISDIR (unsigned int) ;
 scalar_t__ S_ISLNK (unsigned int) ;
 unsigned int ce_permissions (unsigned int) ;

__attribute__((used)) static inline unsigned int create_ce_mode(unsigned int mode)
{
    if (S_ISLNK(mode))
        return S_IFLNK;
    if (S_ISDIR(mode))
        return S_IFDIR;
    return S_IFREG | ce_permissions(mode);
}
