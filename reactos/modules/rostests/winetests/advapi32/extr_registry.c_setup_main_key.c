
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HKEY_CURRENT_USER ;
 int RegCreateKeyA (int ,char*,int *) ;
 int RegOpenKeyA (int ,char*,int *) ;
 int assert (int) ;
 int delete_key (int ) ;
 int hkey_main ;

__attribute__((used)) static void setup_main_key(void)
{
    if (!RegOpenKeyA( HKEY_CURRENT_USER, "Software\\Wine\\Test", &hkey_main )) delete_key( hkey_main );

    assert (!RegCreateKeyA( HKEY_CURRENT_USER, "Software\\Wine\\Test", &hkey_main ));
}
