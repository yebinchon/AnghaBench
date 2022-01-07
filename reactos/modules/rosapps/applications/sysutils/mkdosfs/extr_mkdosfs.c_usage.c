
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fatal_error (char*) ;

void
usage (void)
{
  fatal_error("Usage: mkdosfs [-A] [-c] [-C] [-v] [-I] [-l bad-block-file] [-b backup-boot-sector]\n       [-m boot-msg-file] [-n volume-name] [-i volume-id]\n       [-s sectors-per-cluster] [-S logical-sector-size] [-f number-of-FATs]\n       [-F fat-size] [-r root-dir-entries] [-R reserved-sectors]\n       /dev/name [blocks]\n");





}
