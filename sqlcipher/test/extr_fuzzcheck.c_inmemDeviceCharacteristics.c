
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_file ;


 int SQLITE_IOCAP_POWERSAFE_OVERWRITE ;
 int SQLITE_IOCAP_SAFE_APPEND ;
 int SQLITE_IOCAP_UNDELETABLE_WHEN_OPEN ;

__attribute__((used)) static int inmemDeviceCharacteristics(sqlite3_file *pFile){
  return
      SQLITE_IOCAP_SAFE_APPEND |
      SQLITE_IOCAP_UNDELETABLE_WHEN_OPEN |
      SQLITE_IOCAP_POWERSAFE_OVERWRITE;
}
