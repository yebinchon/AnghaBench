
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqliterk ;


 unsigned int sqliterkGetIntegrity (int *) ;

unsigned int sqliterk_integrity(sqliterk *rk)
{
    return sqliterkGetIntegrity(rk);
}
