
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int marshal_STGMEDIUM (int,int,int) ;

__attribute__((used)) static void test_marshal_STGMEDIUM(void)
{
    marshal_STGMEDIUM(0, 0, 0);
    marshal_STGMEDIUM(0, 0, 1);
    marshal_STGMEDIUM(0, 1, 0);
    marshal_STGMEDIUM(0, 1, 1);




    marshal_STGMEDIUM(1, 1, 1);
}
