
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqliterk_os ;


 int SQLITERK_OK ;
 int s_os ;

int sqliterkOSRegister(sqliterk_os os)
{
    s_os = os;
    return SQLITERK_OK;
}
