
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GUID ;
typedef int BOOL ;


 int FALSE ;
 scalar_t__ memcmp (int const*,int const*,int) ;

BOOL CompareGUID(const GUID *guid1, const GUID *guid2) {
 if ((guid1 != ((void*)0)) && (guid2 != ((void*)0))) {
  return (memcmp(guid1, guid2, sizeof(GUID)) == 0);
 }
 return FALSE;
}
