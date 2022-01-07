
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ssize_t ;
typedef int Connection ;



__attribute__((used)) static ssize_t
mock_write(Connection *conn, const char *buf, size_t writelen)
{
 return writelen;
}
