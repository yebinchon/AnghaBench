
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HKEY_CLASSES_ROOT ;
 int RegDeleteKeyA (int ,char*) ;

__attribute__((used)) static void unregister_testentry(void)
{
 RegDeleteKeyA(HKEY_CLASSES_ROOT,
   "CLSID\\{deadcafe-beed-bead-dead-cafebeaddead}\\Implemented Categories\\{deadcafe-0000-0000-0000-000000000000}");
 RegDeleteKeyA(HKEY_CLASSES_ROOT,
   "CLSID\\{deadcafe-beed-bead-dead-cafebeaddead}\\Implemented Categories");
 RegDeleteKeyA(HKEY_CLASSES_ROOT,
   "CLSID\\{deadcafe-beed-bead-dead-cafebeaddead}");
}
