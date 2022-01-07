
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCSTR ;
typedef int BOOL ;


 int check_binary_file_data (int ,int ,int ) ;
 int lstrlenA (int ) ;

__attribute__((used)) static BOOL check_file_data(LPCSTR path, LPCSTR data)
{
    return check_binary_file_data(path, data, lstrlenA(data));
}
