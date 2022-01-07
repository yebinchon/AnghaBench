
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uuid_t ;


 int uuid_generate (int ) ;
 int uuid_unparse_lower (int ,char*) ;

void gen_uuid_inplace (char *buf)
{
    uuid_t uuid;

    uuid_generate (uuid);
    uuid_unparse_lower (uuid, buf);
}
