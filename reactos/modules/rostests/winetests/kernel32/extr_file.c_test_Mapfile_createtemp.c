
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HANDLE ;


 int CREATE_ALWAYS ;
 scalar_t__ CreateFileA (int ,int,int ,int ,int ,int ,int *) ;
 int DeleteFileA (int ) ;
 int FILE_ATTRIBUTE_NORMAL ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int SetFileAttributesA (int ,int ) ;
 int filename ;

__attribute__((used)) static int test_Mapfile_createtemp(HANDLE *handle)
{
    SetFileAttributesA(filename,FILE_ATTRIBUTE_NORMAL);
    DeleteFileA(filename);
    *handle = CreateFileA(filename, GENERIC_READ|GENERIC_WRITE, 0, 0,
                         CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, ((void*)0));
    if (*handle != INVALID_HANDLE_VALUE) {

        return 1;
    }

    return 0;
}
