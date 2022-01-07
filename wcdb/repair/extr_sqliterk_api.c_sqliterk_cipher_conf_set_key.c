
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int key_len; void const* key; } ;
typedef TYPE_1__ sqliterk_cipher_conf ;



void sqliterk_cipher_conf_set_key(sqliterk_cipher_conf *conf, const void* key, int key_len)
{
    if (conf != ((void*)0)) {
        conf->key = key;
        conf->key_len = key_len;
    }
}
