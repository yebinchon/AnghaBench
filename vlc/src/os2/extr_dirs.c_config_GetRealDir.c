
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int realdir ;


 int CCHMAXPATH ;
 char* FromLocaleDup (char*) ;
 char* config_GetBaseDir () ;
 int config_GetRelDir (char const*) ;
 int snprintf (char*,int,char*,char*,int ) ;

__attribute__((used)) static char *config_GetRealDir( const char *dir )
{
    char realdir[ CCHMAXPATH + 4 ];

    snprintf( realdir, sizeof( realdir ), "%s%s",
              config_GetBaseDir(), config_GetRelDir( dir ));

    return FromLocaleDup( realdir );
}
