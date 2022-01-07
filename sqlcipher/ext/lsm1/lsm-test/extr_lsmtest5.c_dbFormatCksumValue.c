
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DB_KEY_BYTES ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static void dbFormatCksumValue(u32 iVal, char *aBuf){
  snprintf(aBuf, DB_KEY_BYTES, "%.10u", iVal);
}
