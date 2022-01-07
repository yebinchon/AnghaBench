
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCWSTR ;


 size_t ARRAY_SIZE (int*) ;
 int* error_code ;
 int * error_msg ;
 size_t num_errors ;

__attribute__((used)) static void push_error(int code, LPCWSTR msg)
{
    if (num_errors < ARRAY_SIZE(error_code))
    {
        error_code[num_errors] = code;
        error_msg[num_errors] = msg;
        num_errors++;
    }
}
