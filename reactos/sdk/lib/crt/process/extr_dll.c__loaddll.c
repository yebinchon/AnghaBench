
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LoadLibraryA (char*) ;

intptr_t _loaddll(char* name)
{
 return (intptr_t) LoadLibraryA(name);
}
