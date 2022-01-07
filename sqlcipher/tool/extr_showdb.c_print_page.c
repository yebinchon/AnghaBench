
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pagesize; } ;


 int fprintf (int ,char*,int,int,int) ;
 TYPE_1__ g ;
 unsigned char* print_byte_range (int,int,int ) ;
 int sqlite3_free (unsigned char*) ;
 int stdout ;

__attribute__((used)) static void print_page(int iPg){
  int iStart;
  unsigned char *aData;
  iStart = (iPg-1)*g.pagesize;
  fprintf(stdout, "Page %d:   (offsets 0x%x..0x%x)\n",
          iPg, iStart, iStart+g.pagesize-1);
  aData = print_byte_range(iStart, g.pagesize, 0);
  sqlite3_free(aData);
}
