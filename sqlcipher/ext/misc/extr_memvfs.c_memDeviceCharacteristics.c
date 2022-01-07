
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_file ;


 int SQLITE_IOCAP_ATOMIC ;
 int SQLITE_IOCAP_POWERSAFE_OVERWRITE ;
 int SQLITE_IOCAP_SAFE_APPEND ;
 int SQLITE_IOCAP_SEQUENTIAL ;

__attribute__((used)) static int memDeviceCharacteristics(sqlite3_file *pFile){
  return SQLITE_IOCAP_ATOMIC |
         SQLITE_IOCAP_POWERSAFE_OVERWRITE |
         SQLITE_IOCAP_SAFE_APPEND |
         SQLITE_IOCAP_SEQUENTIAL;
}
