
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Connection ;



__attribute__((used)) static int
mock_connect(Connection *conn, const char *host, const char *servname, int port)
{
 return 0;
}
