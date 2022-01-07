
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOLEAN ;


 int ok (int ,char*,char const*) ;
 int printf (char*,char const*) ;

__attribute__((used)) static void check_result(BOOLEAN bOK, const char* pszErr)
{



 if (!bOK) {
  printf("\a** %s.\n", pszErr);
 }

}
