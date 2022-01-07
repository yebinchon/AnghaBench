
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADDON_EXTENSION ;
 int ADDON_INTERFACE ;
 int ADDON_META ;
 int ADDON_PLAYLIST_PARSER ;
 int ADDON_SERVICE_DISCOVERY ;
 int ADDON_SKIN2 ;
 int ADDON_UNKNOWN ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static inline int ReadType( const char *value )
{
    if ( !strcmp( value, "playlist" ) )
        return ADDON_PLAYLIST_PARSER;
    else if ( !strcmp( value, "skin" ) )
        return ADDON_SKIN2;
    else if ( !strcmp( value, "discovery" ) )
        return ADDON_SERVICE_DISCOVERY;
    else if ( !strcmp( value, "extension" ) )
        return ADDON_EXTENSION;
    else if ( !strcmp( value, "interface" ) )
        return ADDON_INTERFACE;
    else if ( !strcmp( value, "meta" ) )
        return ADDON_META;
    else
        return ADDON_UNKNOWN;
}
