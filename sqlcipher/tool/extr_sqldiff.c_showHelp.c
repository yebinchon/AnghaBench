
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* zArgv0; } ;


 TYPE_1__ g ;
 int printf (char*,...) ;

__attribute__((used)) static void showHelp(void){
  printf("Usage: %s [options] DB1 DB2\n", g.zArgv0);
  printf(
"Output SQL text that would transform DB1 into DB2.\n"
"Options:\n"
"  --changeset FILE      Write a CHANGESET into FILE\n"
"  -L|--lib LIBRARY      Load an SQLite extension library\n"
"  --primarykey          Use schema-defined PRIMARY KEYs\n"
"  --rbu                 Output SQL to create/populate RBU table(s)\n"
"  --schema              Show only differences in the schema\n"
"  --summary             Show only a summary of the differences\n"
"  --table TAB           Show only differences in table TAB\n"
"  --transaction         Show SQL output inside a transaction\n"
"  --vtab                Handle fts3, fts4, fts5 and rtree tables\n"
  );
}
