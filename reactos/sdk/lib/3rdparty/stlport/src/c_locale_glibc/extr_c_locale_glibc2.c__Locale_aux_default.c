
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* _C_name ;
 char* getenv (char const*) ;

__attribute__((used)) static const char *_Locale_aux_default( const char *LC, char *nm )
{
  char *name = getenv( "LC_ALL" );

  if ( name != ((void*)0) && *name != 0 ) {
    return name;
  }
  name = getenv( LC );
  if ( name != ((void*)0) && *name != 0 ) {
    return name;
  }
  name = getenv( "LANG" );
  if ( name != ((void*)0) && *name != 0 ) {
    return name;
  }

  return _C_name;
}
