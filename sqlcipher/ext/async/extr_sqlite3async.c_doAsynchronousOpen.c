
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SQLITE_OPEN_CREATE ;
 int SQLITE_OPEN_DELETEONCLOSE ;
 int SQLITE_OPEN_MAIN_JOURNAL ;
 int SQLITE_OPEN_TEMP_JOURNAL ;

__attribute__((used)) static int doAsynchronousOpen(int flags){
  return (flags&SQLITE_OPEN_CREATE) && (
      (flags&SQLITE_OPEN_MAIN_JOURNAL) ||
      (flags&SQLITE_OPEN_TEMP_JOURNAL) ||
      (flags&SQLITE_OPEN_DELETEONCLOSE)
  );
}
