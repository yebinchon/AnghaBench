
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IBackgroundCopyFile ;
typedef scalar_t__ HRESULT ;


 scalar_t__ E_INVALIDARG ;
 scalar_t__ IEnumBackgroundCopyFiles_Next (int ,int,int **,int *) ;
 int NUM_FILES ;
 int ok (int,char*,scalar_t__) ;
 int test_enumFiles ;

__attribute__((used)) static void test_Next_errors(void)
{
    HRESULT hres;
    IBackgroundCopyFile *files[NUM_FILES];


    hres = IEnumBackgroundCopyFiles_Next(test_enumFiles, 2, files, ((void*)0));
    ok(hres == E_INVALIDARG, "Invalid call to Next succeeded: %08x\n", hres);
}
