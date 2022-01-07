
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;


 scalar_t__ S_ISBLK (int ) ;
 scalar_t__ S_ISCHR (int ) ;
 scalar_t__ S_ISCTG (int ) ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISDOOR (int ) ;
 scalar_t__ S_ISFIFO (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 scalar_t__ S_ISMPC (int ) ;
 scalar_t__ S_ISNWK (int ) ;
 scalar_t__ S_ISOFD (int ) ;
 scalar_t__ S_ISOFL (int ) ;
 scalar_t__ S_ISREG (int ) ;
 scalar_t__ S_ISSOCK (int ) ;

__attribute__((used)) static char
ftypelet (mode_t bits)
{




  if (S_ISCHR (bits))
    return 'c';
  if (S_ISDIR (bits))
    return 'd';
  if (S_ISREG (bits))
    return '-';
  return '?';
}
