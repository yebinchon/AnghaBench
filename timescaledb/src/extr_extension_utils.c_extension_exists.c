
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXTENSION_NAME ;
 int OidIsValid (int ) ;
 int get_extension_oid (int ,int) ;

__attribute__((used)) static bool inline extension_exists()
{
 return OidIsValid(get_extension_oid(EXTENSION_NAME, 1));
}
