
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqliterk_cipher_conf ;
typedef int sqliterk ;


 int sqliterkOpen (char const*,int const*,int **) ;

int sqliterk_open(const char *path,
                  const sqliterk_cipher_conf *cipher,
                  sqliterk **rk)
{
    return sqliterkOpen(path, cipher, rk);
}
