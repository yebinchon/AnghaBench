
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int p__invalid_parameter (int *,int *,int *,int ,int ) ;
 int win_skip (char*) ;

__attribute__((used)) static void test__invalid_parameter(void)
{
    if(!p__invalid_parameter) {
        win_skip("_invalid_parameter not available\n");
        return;
    }

    p__invalid_parameter(((void*)0), ((void*)0), ((void*)0), 0, 0);
}
