
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CHAR ;


 int create_file_data (int const*,int const*) ;

__attribute__((used)) static void create_test_file(const CHAR *name)
{
    create_file_data(name, name);
}
