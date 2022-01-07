
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MuOfficeSaveResultFn ;
typedef int MuOfficeDoc ;
typedef int MuError ;


 int MuError_NotImplemented ;

MuError MuOfficeDoc_save( MuOfficeDoc *doc,
    const char *path,
    MuOfficeSaveResultFn *resultFn,
    void *cookie)
{
 return MuError_NotImplemented;
}
