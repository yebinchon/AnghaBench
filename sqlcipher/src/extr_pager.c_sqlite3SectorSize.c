
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_file ;


 int MAX_SECTOR_SIZE ;
 int assert (int) ;
 int sqlite3OsSectorSize (int *) ;

int sqlite3SectorSize(sqlite3_file *pFile){
  int iRet = sqlite3OsSectorSize(pFile);
  if( iRet<32 ){
    iRet = 512;
  }else if( iRet>MAX_SECTOR_SIZE ){
    assert( MAX_SECTOR_SIZE>=512 );
    iRet = MAX_SECTOR_SIZE;
  }
  return iRet;
}
