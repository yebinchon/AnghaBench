
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int char_u ;
typedef int Ptr ;
typedef scalar_t__ OSErr ;
typedef int FSSpec ;
typedef int DescType ;
typedef int AEKeyword ;
typedef int AEDesc ;


 scalar_t__ AECountItems (int *,long*) ;
 scalar_t__ AEGetNthPtr (int *,long,int ,int *,int *,int ,int,long*) ;
 int * FullPathFromFSSpec_save (int ) ;
 scalar_t__ alloc (long) ;
 int typeFSS ;

char_u **
new_fnames_from_AEDesc(AEDesc *theList, long *numFiles, OSErr *error)
{
    char_u **fnames = ((void*)0);
    OSErr newError;
    long fileCount;
    FSSpec fileToOpen;
    long actualSize;
    AEKeyword dummyKeyword;
    DescType dummyType;


    *error = AECountItems(theList, numFiles);
    if (*error)
 return fnames;


    fnames = (char_u **) alloc(*numFiles * sizeof(char_u *));


    for (fileCount = 0; fileCount < *numFiles; fileCount++)
 fnames[fileCount] = ((void*)0);


    for (fileCount = 1; fileCount <= *numFiles; fileCount++)
    {

 newError = AEGetNthPtr(theList, fileCount, typeFSS,
    &dummyKeyword, &dummyType,
    (Ptr) &fileToOpen, sizeof(FSSpec), &actualSize);
 if (newError)
 {


     return fnames;
 }


 fnames[fileCount - 1] = FullPathFromFSSpec_save(fileToOpen);
    }

    return (fnames);
}
