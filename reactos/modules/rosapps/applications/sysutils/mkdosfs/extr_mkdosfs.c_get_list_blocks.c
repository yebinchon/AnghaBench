
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int SECTORS_PER_BLOCK ;
 int badblocks ;
 int die (char*) ;
 int fclose (int *) ;
 int feof (int *) ;
 int * fopen (char*,char*) ;
 int fscanf (int *,char*,unsigned long*) ;
 int mark_sector_bad (unsigned long) ;
 int printf (char*,int,char*) ;

__attribute__((used)) static void
get_list_blocks (char *filename)
{
  int i;
  FILE *listfile;
  unsigned long blockno;

  listfile = fopen (filename, "r");
  if (listfile == (FILE *) ((void*)0))
    die ("Can't open file of bad blocks");

  while (!feof (listfile))
    {
      fscanf (listfile, "%ld\n", &blockno);
      for (i = 0; i < SECTORS_PER_BLOCK; i++)
 mark_sector_bad (blockno * SECTORS_PER_BLOCK + i);
      badblocks++;
    }
  fclose (listfile);

  if (badblocks)
    printf ("%d bad block%s\n", badblocks,
     (badblocks > 1) ? "s" : "");
}
