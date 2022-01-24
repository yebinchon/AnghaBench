#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int ADDON_EXTENSION ; 
 int ADDON_INTERFACE ; 
 int ADDON_META ; 
 int ADDON_PLAYLIST_PARSER ; 
 int ADDON_SERVICE_DISCOVERY ; 
 int ADDON_SKIN2 ; 
 int ADDON_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (char const*,char*) ; 

__attribute__((used)) static inline int FUNC1( const char *value )
{
    if ( !FUNC0( value, "playlist" ) )
        return ADDON_PLAYLIST_PARSER;
    else if ( !FUNC0( value, "skin" ) )
        return ADDON_SKIN2;
    else if ( !FUNC0( value, "discovery" ) )
        return ADDON_SERVICE_DISCOVERY;
    else if ( !FUNC0( value, "extension" ) )
        return ADDON_EXTENSION;
    else if ( !FUNC0( value, "interface" ) )
        return ADDON_INTERFACE;
    else if ( !FUNC0( value, "meta" ) )
        return ADDON_META;
    else
        return ADDON_UNKNOWN;
}