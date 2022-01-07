
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int calculate_sha1 (unsigned char*,char*,int) ;
 int g_free (char*) ;
 char* g_strdup (char*) ;
 char* gen_uuid () ;
 int rawdata_to_hex (unsigned char*,char*,int) ;

__attribute__((used)) static char *
generate_client_id ()
{
    char *uuid = gen_uuid();
    unsigned char buf[20];
    char sha1[41];

    calculate_sha1 (buf, uuid, 20);
    rawdata_to_hex (buf, sha1, 20);

    g_free (uuid);
    return g_strdup(sha1);
}
