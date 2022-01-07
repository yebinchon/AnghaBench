
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Connection ;


 int srand (int ) ;
 int time (int ) ;

__attribute__((used)) static int
mock_init(Connection *conn)
{
 srand(time(0));
 return 0;
}
